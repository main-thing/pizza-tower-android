// GMLive.gml (c) YellowAfterlife, 2017+
// PLEASE DO NOT FORGET to remove paid extensions from your project when publishing the source code!
// And if you are using git, you can exclude GMLive by adding
// `scripts/GMLive*` and `extensions/GMLive/` lines to your `.gitignore`.
// Feather disable all

// tokenizes the source code!
if(live_enabled)
function gml_parser(l_src)constructor{
	static h_tokens=undefined; /// @is {array<gml_token>}
	static h_token_count=undefined; /// @is {int}
	static h_macros=undefined; /// @is {array<gml_parser_macro>}
	static h_curr_macro=undefined; /// @is {gml_parser_macro}
	static h_curr_template=undefined; /// @is {gml_parser_template_state}
	static h_source=undefined; /// @is {gml_source}
	static h_pos_source=undefined; /// @is {ast_GmlPosSource}
	static h_pos=undefined; /// @is {int}
	static h_row_start=undefined; /// @is {int}
	static h_row=undefined; /// @is {int}
	static h_len=undefined; /// @is {int}
	static h_set_source=function(l_src){
		var l_code=l_src.h_code;
		var l_sb=gml_parser_str_buf;
		buffer_seek(l_sb,buffer_seek_start,0);
		buffer_write(l_sb,buffer_string,l_code);
		self.h_len=buffer_tell(l_sb)-1;
		if(buffer_get_size(gml_parser_fast_buf)<self.h_len)buffer_resize(gml_parser_fast_buf,self.h_len);
		buffer_copy(l_sb,0,self.h_len,gml_parser_fast_buf,0);
		ds_list_clear(gml_parser_token_acc);
	}
	static h_to_string=function(){
		return "GmlParser(src:\""+self.h_source.h_name+"\")";
	}
	static h_error=function(l_text,l_pos){
		if(false)show_debug_message(argument[1]);
		if(l_pos==undefined)l_pos=gml_pos_create(self.h_pos_source,self.h_row,self.h_pos-self.h_row_start,self.h_pos);
		gml_parser_error_text=gml_pos_to_string_in(l_pos,self.h_source)+": "+l_text;
		gml_parser_error_pos=l_pos;
		ds_list_clear(gml_parser_token_acc);
		return undefined;
	}
	static h_finish=function(){
		self.h_curr_macro=undefined;
		if(self.h_source.h___eof==undefined)self.h_source.h___eof=gml_pos_create(self.h_pos_source,self.h_row,self.h_pos-self.h_row_start,self.h_pos);
		var l_tkList=gml_parser_token_acc;
		var l_tkCount=ds_list_size(l_tkList);
		var l_tkArr=array_create(l_tkCount);
		var l_i=0;
		var l__=0;
		for(var l__g1=l_tkCount;l__<l__g1;l__++){
			l_tkArr[@l_i]=ds_list_find_value(l_tkList,l_i);
			l_tkArr[l_i].__enumName__=gml_std_Type_enumConstructor(l_tkArr[l_i]);
			l_i++;
		}
		ds_list_clear(l_tkList);
		self.h_tokens=l_tkArr;
		self.h_token_count=l_tkCount;
		return l_tkArr;
	}
	static h_skip_till_line_end=function(){
		while(self.h_pos<self.h_len){
			var l_c=buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8);
			if(l_c==13||l_c==10)break;
			self.h_pos+=1;
		}
	}
	static h_skip_line_spaces=function(){
		while(self.h_pos<self.h_len){
			var l_c=buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8);
			if(l_c==13||l_c==10)break;
			if(!(gml_parser_char_is_space[l_c]||l_c==194&&buffer_peek(gml_parser_fast_buf,self.h_pos+1,buffer_u8)==160))break;
			self.h_pos+=1;
		}
	}
	static h_proc_macro=function(l_c){
		var l_z;
		switch(l_c){
			case 92:
				l_z=true;
				while(self.h_pos<self.h_len&&l_z){
					l_c=buffer_peek(gml_parser_fast_buf,self.h_pos++,buffer_u8);
					switch(l_c){
						case 47:
							if(buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8)==47){
								self.h_skip_till_line_end();
							} else if(buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8)==42){
								return self.h_error("Should not be having block comments after a \\ in a macro");
							} else return self.h_error("Unexpected character `"+chr(l_c)+"` after a \\ in a macro");
							break;
						case 9:case 32:continue;
						case 13:if(buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8)==10)self.h_pos+=1;break;
						case 10:break;
						default:return self.h_error("Unexpected character `"+chr(l_c)+"` after a \\ in a macro");
					}
					break;
				}
				return -1;
			case 47:
				if(buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8)==47){
					l_z=false;
					while(self.h_pos<self.h_len){
						l_c=buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8);
						if(l_c==13||l_c==10)break;
						if(l_c==92)l_z=true;
						self.h_pos+=1;
					}
					if(l_z){
						if(buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8)==13)self.h_pos+=1;
						if(buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8)==10)self.h_pos+=1;
					}
				} else if(buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8)==42){
					l_z=false;
					while(self.h_pos<self.h_len){
						l_c=buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8);
						if(l_c==92){
							l_z=true;
							continue;
						}
						if(l_c==13||l_c==10){
							self.h_pos+=1;
							if(l_c==13&&buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8)==10)self.h_pos+=1;
							if(!l_z)return self.h_error("Multi-line comments inside macros must use \\ before line end");
							l_z=false;
						}
						self.h_pos+=1;
					}
				}
				break;
			case 10:case 13:
				self.h_curr_macro=undefined;
				return -1;
		}
		return l_c;
	}
	static h_proc_hexadecimal=function(l_md,l_is0x){
		var l_start=self.h_pos;
		var l_val=0;
		var l_found=0;
		while(self.h_pos<self.h_len){
			var l_c=buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8);
			if(l_c==95){
				self.h_pos+=1;
				continue;
			} else if(l_c>=48&&l_c<=57){
				l_val=((l_val<<4)|l_c-48);
			} else if(l_c>=97&&l_c<=102){
				l_val=((l_val<<4)|l_c-87);
			} else if(l_c>=65&&l_c<=70){
				l_val=((l_val<<4)|l_c-55);
			} else break;
			self.h_pos+=1;
			l_found++;
		}
		if(l_found==0)return self.h_error("Empty hex literal",l_md);
		if(l_found>8)return self.h_error("Too many digits in a hex literal (max: 8)",l_md);
		var l_tk=gml_token_number(l_md,l_val,gml_parser_buf_sub(gml_parser_fast_buf,gml_parser_buf_sub_buf,l_start,self.h_pos));
		if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk); else ds_list_add(gml_parser_token_acc,l_tk);
		return true;
	}
	static h_proc_binary=function(l_md){
		var l_start=self.h_pos-2;
		var l_i=0;
		while(self.h_pos<self.h_len){
			var l_c=buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8);
			if(l_c==95){
				self.h_pos+=1;
				continue;
			} else if(l_c==48||l_c==49){
				l_i=((l_i<<1)|((l_c-48|0)));
			} else break;
			self.h_pos+=1;
		}
		var l_tk=gml_token_number(l_md,l_i,gml_parser_buf_sub(gml_parser_fast_buf,gml_parser_buf_sub_buf,l_start,self.h_pos));
		if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk); else ds_list_add(gml_parser_token_acc,l_tk);
		return true;
	}
	static h_read_ident=function(){
		if(self.h_pos>=self.h_len)return undefined;
		var l_start=self.h_pos;
		var l_c=buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8);
		if(!(l_c==95||l_c>=97&&l_c<=122||l_c>=65&&l_c<=90))return undefined;
		self.h_pos+=1;
		while(self.h_pos<self.h_len){
			l_c=buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8);
			if(l_c==95||l_c>=97&&l_c<=122||l_c>=65&&l_c<=90||l_c>=48&&l_c<=57)self.h_pos+=1; else break;
		}
		return gml_parser_buf_sub(gml_parser_fast_buf,gml_parser_buf_sub_buf,l_start,self.h_pos);
	}
	static h_read_literal_string=function(l_quoteChar,l_d){
		var l_start=self.h_pos;
		var l_closed=false;
		while(self.h_pos<self.h_len){
			var l_c=buffer_peek(gml_parser_fast_buf,self.h_pos++,buffer_u8);
			if(l_c==l_quoteChar){
				l_closed=true;
				break;
			}
			if(l_c==10){
				self.h_row+=1;
				self.h_row_start=self.h_pos;
				continue;
			}
			if(l_c>=192){
				if(l_c>=224){
					if(l_c>=240)self.h_row_start+=3; else self.h_row_start+=2;
				} else self.h_row_start+=1;
			}
		}
		if(l_closed)return gml_parser_buf_sub(gml_parser_fast_buf,gml_parser_buf_sub_buf,l_start,self.h_pos); else return self.h_error("Unclosed string",l_d);
	}
	static h_add_op=function(l_d,l_op){
		if(buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8)==61){
			self.h_pos+=1;
			var l_tk=gml_token_set_op(l_d,l_op);
			if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk); else ds_list_add(gml_parser_token_acc,l_tk);
		} else {
			var l_tk=gml_token_bin_op(l_d,l_op);
			if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk); else ds_list_add(gml_parser_token_acc,l_tk);
		}
	}
	static h_proc_string_escape_char=function(l_sb){
		var l_c=buffer_peek(gml_parser_fast_buf,self.h_pos++,buffer_u8);
		var l_val,l_found;
		switch(l_c){
			case 97:buffer_write(l_sb,buffer_u8,7);break;
			case 98:buffer_write(l_sb,buffer_u8,8);break;
			case 116:buffer_write(l_sb,buffer_u8,9);break;
			case 110:buffer_write(l_sb,buffer_u8,10);break;
			case 118:buffer_write(l_sb,buffer_u8,11);break;
			case 102:buffer_write(l_sb,buffer_u8,12);break;
			case 114:buffer_write(l_sb,buffer_u8,13);break;
			case 13:if(buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8)==10)self.h_pos+=1;break;
			case 10:break;
			case 117:case 120:
				var l_isu=l_c==117;
				l_val=0;
				l_found=0;
				while(self.h_pos<self.h_len){
					l_c=buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8);
					if(l_c>=48&&l_c<=57){
						l_c-=48;
					} else if(l_c>=97&&l_c<=102){
						l_c-=87;
					} else if(l_c>=65&&l_c<=70){
						l_c-=55;
					} else l_c=-1;
					if(l_c<0)break;
					l_val=((l_val<<4)|l_c);
					self.h_pos+=1;
					if(l_isu){
						if(++l_found>=6)break;
					} else if(++l_found>=2){
						break;
					}
				}
				if(!l_isu&&l_found!=2)return self.h_error("Expected 2 hex characters in \\x");
				_gml_parser_gml_parser_string_buf_impl__add_code_point(l_sb,l_val);
				break;
			default:
				if(l_c>=48&&l_c<=55){
					l_val=0;
					l_found=0;
					while(self.h_pos<self.h_len){
						l_c=buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8);
						if(l_c>=48&&l_c<=55)l_val=((l_val<<3)|l_c-48); else break;
						self.h_pos+=1;
						if(++l_found>=3)break;
					}
					if(l_val>255)return self.h_error("Can't do \\oct for codes over 255");
					_gml_parser_gml_parser_string_buf_impl__add_code_point(l_sb,l_val);
				} else buffer_write(l_sb,buffer_u8,l_c);
		}
		return true;
	}
	static h_read_esc_string=function(l_startPos){
		var l_sb=_gml_parser_gml_parser_string_buf_impl__start();
		var l_pure=true;
		var l_start=self.h_pos;
		var l_closed=false;
		while(self.h_pos<self.h_len){
			var l_c=buffer_peek(gml_parser_fast_buf,self.h_pos++,buffer_u8);
			if(l_c>=192){
				if(l_c>=224){
					if(l_c>=240)self.h_row_start+=3; else self.h_row_start+=2;
				} else self.h_row_start+=1;
			}
			switch(l_c){
				case 34:
					if(!l_pure){
						var l_till=self.h_pos-1;
						if(l_till>l_start)buffer_write(l_sb,buffer_text,gml_parser_buf_sub(gml_parser_fast_buf,gml_parser_buf_sub_buf,l_start,l_till));
					}
					l_closed=true;
					break;
				case 92:
					l_pure=false;
					var l_till1=self.h_pos-1;
					if(l_till1>l_start)buffer_write(l_sb,buffer_text,gml_parser_buf_sub(gml_parser_fast_buf,gml_parser_buf_sub_buf,l_start,l_till1));
					if(self.h_proc_string_escape_char(l_sb)==undefined)return undefined;
					l_start=self.h_pos;
					continue;
				case 10:case 13:return self.h_error("Unclosed string - unescaped newline mid-string",l_startPos);
				default:continue;
			}
			break;
		}
		if(!l_closed)return self.h_error("Unclosed string",l_startPos);
		if(l_pure)return gml_parser_buf_sub(gml_parser_fast_buf,gml_parser_buf_sub_buf,l_start,self.h_pos-1);
		return _gml_parser_gml_parser_string_buf_impl__to_string(l_sb);
	}
	static h_proc_define=function(l_d){
		self.h_skip_line_spaces();
		var l_name=self.h_read_ident();
		if(l_name==undefined)return self.h_error("Expected a script name");
		var l_tk=gml_token_header(l_d,l_name,false);
		if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk); else ds_list_add(gml_parser_token_acc,l_tk);
		return true;
	}
	static h_proc_macro_def=function(l_d){
		var l__gthis=self;
		var l_name,l_config;
		if(gml_parser_curr_version.h_expr_macros){
			var l_tk=gml_token_macro_start(l_d);
			if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk); else ds_list_add(gml_parser_token_acc,l_tk);
		} else {
			l_config=undefined;
			l__gthis.h_skip_line_spaces();
			l_name=l__gthis.h_read_ident();
			var l_tmp;
			if(l_name==undefined){
				l_tmp=true;
			} else {
				l__gthis.h_skip_line_spaces();
				if(buffer_peek(gml_parser_fast_buf,l__gthis.h_pos,buffer_u8)==58){
					l__gthis.h_pos+=1;
					l_config=l_name;
					l__gthis.h_skip_line_spaces();
					l_name=l__gthis.h_read_ident();
					if(l_name==undefined){
						l_name=l_config;
						l_config=undefined;
					}
				}
				l_tmp=false;
			}
			if(l_tmp)return undefined;
			self.h_curr_macro=new gml_parser_macro(l_name,l_config,l_d);
			array_push(self.h_macros,self.h_curr_macro);
		}
		return true;
	}
	static h_proc_template_segment=function(l_startPos){
		var l_sb=_gml_parser_gml_parser_string_buf_impl__start();
		var l_tpl=self.h_curr_template;
		var l_stop=l_tpl.h_stop;
		var l_start=self.h_pos;
		while(self.h_pos<self.h_len){
			var l_c=buffer_peek(gml_parser_fast_buf,self.h_pos++,buffer_u8);
			if(l_c==l_stop){
				var l_till=self.h_pos-1;
				if(l_till>l_start)buffer_write(l_sb,buffer_text,gml_parser_buf_sub(gml_parser_fast_buf,gml_parser_buf_sub_buf,l_start,l_till));
				l_tpl.h_str+=_gml_parser_gml_parser_string_buf_impl__to_string(l_sb);
				var l_tk=gml_token_par_close(gml_pos_create(self.h_pos_source,self.h_row,self.h_pos-self.h_row_start,self.h_pos));
				if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk); else ds_list_add(gml_parser_token_acc,l_tk);
				ds_list_set(gml_parser_token_acc,l_tpl.h_tk_index,gml_token_cstring(l_tpl.h_pos,l_tpl.h_str));
				self.h_curr_template=l_tpl.h_next;
				return true;
			}
			if(l_c==123){
				var l_till1=self.h_pos-1;
				if(l_till1>l_start)buffer_write(l_sb,buffer_text,gml_parser_buf_sub(gml_parser_fast_buf,gml_parser_buf_sub_buf,l_start,l_till1));
				var l_tk1=gml_token_comma(l_tpl.h_pos);
				if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk1); else ds_list_add(gml_parser_token_acc,l_tk1);
				buffer_write(l_sb,buffer_text,"{"+string(l_tpl.h_arg_count++)+"}");
				l_tpl.h_str+=_gml_parser_gml_parser_string_buf_impl__to_string(l_sb);
				var l_till2=self.h_pos-1;
				if(l_till2>l_start)buffer_write(l_sb,buffer_text,gml_parser_buf_sub(gml_parser_fast_buf,gml_parser_buf_sub_buf,l_start,l_till2));
				return true;
			}
			if(l_c==92){
				var l_till3=self.h_pos-1;
				if(l_till3>l_start)buffer_write(l_sb,buffer_text,gml_parser_buf_sub(gml_parser_fast_buf,gml_parser_buf_sub_buf,l_start,l_till3));
				self.h_proc_string_escape_char(l_sb);
				l_start=self.h_pos;
			}
		}
		return true;
	}
	static h_proc_number=function(l_d){
		var l_start=self.h_pos;
		var l_z=false;
		var l_s=undefined;
		while(self.h_pos<self.h_len){
			var l_c=buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8);
			if(l_c==46){
				if(l_z){
					return self.h_error("Extra dot in a number");
				} else {
					self.h_pos+=1;
					l_c=buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8);
					if(l_c==95||l_c>=97&&l_c<=122||l_c>=65&&l_c<=90){
						l_s=gml_parser_buf_sub(gml_parser_fast_buf,gml_parser_buf_sub_buf,l_start,self.h_pos-1);
						var l_tk=gml_token_number(l_d,gml_std_Std_parseFloat(l_s),l_s);
						if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk); else ds_list_add(gml_parser_token_acc,l_tk);
						l_d=gml_pos_create(self.h_pos_source,self.h_row,self.h_pos-self.h_row_start,self.h_pos);
						var l_tk1=gml_token_period(l_d);
						if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk1); else ds_list_add(gml_parser_token_acc,l_tk1);
						break;
					}
					l_z=true;
				}
			} else if(l_c>=48&&l_c<=57||l_c==95){
				self.h_pos+=1;
			} else break;
		}
		if(l_s==undefined){
			while(buffer_peek(gml_parser_fast_buf,l_start,buffer_u8)==48){
				l_start++;
				if(l_start>=self.h_pos){
					l_start--;
					break;
				} else if(buffer_peek(gml_parser_fast_buf,l_start,buffer_u8)==46){
					l_start--;
					break;
				}
			}
			l_s=gml_parser_buf_sub(gml_parser_fast_buf,gml_parser_buf_sub_buf,l_start,self.h_pos);
			l_s=string_replace_all(l_s,"_","");
			var l_f=gml_std_Std_parseFloat(l_s);
			if(!l_z){
				if(string_format(l_f,0,0)!=l_s){
					var l_i64=int64(l_s);
					if(string(l_i64)==l_s)l_f=l_i64;
				}
			}
			var l_tk=gml_token_number(l_d,l_f,l_s);
			if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk); else ds_list_add(gml_parser_token_acc,l_tk);
		}
		return true;
	}
	static h_run=function(l_temStart){
		if(l_temStart==undefined)l_temStart=-1;
		if(false)show_debug_message(argument[0]);
		var l__gthis=self;
		var l_ver=self.h_source.h_version;
		if(l_ver==undefined){
			l_ver=gml_parser_default_version;
			self.h_source.h_version=l_ver;
		}
		gml_parser_curr_version=l_ver;
		self.h_set_source(self.h_source);
		var l_checkLineBreakForHeader=false;
		while(self.h_pos<self.h_len){
			var l_c=buffer_peek(gml_parser_fast_buf,self.h_pos++,buffer_u8);
			if(self.h_curr_macro!=undefined){
				l_c=self.h_proc_macro(l_c);
				if(l_c<0)continue;
			}
			var l_i,l_s,l_z,l_tmp;
			if(l_c==10){
				self.h_row+=1;
				self.h_row_start=self.h_pos;
				l_tmp=true;
			} else l_tmp=false;
			if(l_tmp){
				if(l_checkLineBreakForHeader){
					l_checkLineBreakForHeader=false;
					l_i=ds_list_size(gml_parser_token_acc)-1;
					var l__g=ds_list_find_value(gml_parser_token_acc,l_i);
					if(l__g.__enumIndex__==0){
						if(l__g.h_lb==false)ds_list_set(gml_parser_token_acc,l_i,gml_token_header(l__g.h_d,l__g.h_name,true));
					}
				}
				continue;
			}
			if(gml_parser_char_is_space[l_c]||l_c==194&&buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8)==160)continue;
			var l_start=self.h_pos-1;
			var l_d=gml_pos_create(self.h_pos_source,self.h_row,self.h_pos-self.h_row_start,self.h_pos);
			switch(l_c){
				case 59:
					var l_tk22=gml_token_semico(l_d);
					if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk22); else ds_list_add(gml_parser_token_acc,l_tk22);
					break;
				case 44:
					var l_tk13=gml_token_comma(l_d);
					if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk13); else ds_list_add(gml_parser_token_acc,l_tk13);
					break;
				case 46:
					l_c=buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8);
					if(l_c>=48&&l_c<=57){
						do {
							self.h_pos+=1;
							l_c=buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8);
						} until(!(l_c>=48&&l_c<=57));
						l_s=gml_parser_buf_sub(gml_parser_fast_buf,gml_parser_buf_sub_buf,l_start,self.h_pos);
						var l_tk17=gml_token_number(l_d,gml_std_Std_parseFloat(l_s),l_s);
						if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk17); else ds_list_add(gml_parser_token_acc,l_tk17);
					} else {
						var l_tk18=gml_token_period(l_d);
						if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk18); else ds_list_add(gml_parser_token_acc,l_tk18);
					}
					break;
				case 58:
					var l_tk21=gml_token_colon(l_d);
					if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk21); else ds_list_add(gml_parser_token_acc,l_tk21);
					break;
				case 47:
					switch(buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8)){
						case 47:
							self.h_pos+=1;
							l_start=self.h_pos;
							self.h_skip_till_line_end();
							break;
						case 42:
							self.h_pos+=1;
							while(self.h_pos<self.h_len){
								l_c=buffer_peek(gml_parser_fast_buf,self.h_pos++,buffer_u8);
								if(l_c>=192){
									if(l_c>=224){
										if(l_c>=240)self.h_row_start+=3; else self.h_row_start+=2;
									} else self.h_row_start+=1;
								}
								if(l_c==10){
									self.h_row+=1;
									self.h_row_start=self.h_pos;
								}
								if(self.h_pos+1<self.h_len){
									if(l_c==42&&buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8)==47){
										self.h_pos+=1;
										break;
									}
								}
							}
							break;
						case 61:
							self.h_pos+=1;
							var l_tk19=gml_token_set_op(l_d,1);
							if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk19); else ds_list_add(gml_parser_token_acc,l_tk19);
							break;
						default:
							var l_tk20=gml_token_bin_op(l_d,1);
							if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk20); else ds_list_add(gml_parser_token_acc,l_tk20);
					}
					break;
				case 63:
					if(buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8)==63){
						self.h_pos+=1;
						if(buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8)==61){
							self.h_pos+=1;
							var l_tk29=gml_token_null_co_set(l_d);
							if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk29); else ds_list_add(gml_parser_token_acc,l_tk29);
						} else {
							var l_tk30=gml_token_null_co(l_d);
							if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk30); else ds_list_add(gml_parser_token_acc,l_tk30);
						}
					} else {
						var l_tk31=gml_token_qmark(l_d);
						if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk31); else ds_list_add(gml_parser_token_acc,l_tk31);
					}
					break;
				case 61:
					if(buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8)==61){
						self.h_pos+=1;
						var l_tk25=gml_token_bin_op(l_d,64);
						if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk25); else ds_list_add(gml_parser_token_acc,l_tk25);
					} else {
						var l_tk26=gml_token_set_op(l_d,-1);
						if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk26); else ds_list_add(gml_parser_token_acc,l_tk26);
					}
					break;
				case 43:
					switch(buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8)){
						case 61:
							self.h_pos+=1;
							var l_tk11=gml_token_set_op(l_d,16);
							if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk11); else ds_list_add(gml_parser_token_acc,l_tk11);
							break;
						case 43:
							self.h_pos+=1;
							var l_tk10=gml_token_adjfix(l_d,true);
							if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk10); else ds_list_add(gml_parser_token_acc,l_tk10);
							break;
						default:
							var l_tk12=gml_token_bin_op(l_d,16);
							if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk12); else ds_list_add(gml_parser_token_acc,l_tk12);
					}
					break;
				case 45:
					switch(buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8)){
						case 61:
							self.h_pos+=1;
							var l_tk15=gml_token_set_op(l_d,17);
							if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk15); else ds_list_add(gml_parser_token_acc,l_tk15);
							break;
						case 45:
							self.h_pos+=1;
							var l_tk14=gml_token_adjfix(l_d,false);
							if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk14); else ds_list_add(gml_parser_token_acc,l_tk14);
							break;
						default:
							var l_tk16=gml_token_bin_op(l_d,17);
							if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk16); else ds_list_add(gml_parser_token_acc,l_tk16);
					}
					break;
				case 42:self.h_add_op(l_d,0);break;
				case 37:self.h_add_op(l_d,2);break;
				case 38:
					if(buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8)==38){
						self.h_pos+=1;
						self.h_add_op(l_d,80);
					} else self.h_add_op(l_d,49);
					break;
				case 124:
					if(buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8)==124){
						self.h_pos+=1;
						self.h_add_op(l_d,96);
					} else self.h_add_op(l_d,48);
					break;
				case 94:
					if(buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8)==94){
						self.h_pos+=1;
						self.h_add_op(l_d,65);
					} else self.h_add_op(l_d,50);
					break;
				case 62:
					switch(buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8)){
						case 61:
							self.h_pos+=1;
							var l_tk27=gml_token_bin_op(l_d,69);
							if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk27); else ds_list_add(gml_parser_token_acc,l_tk27);
							break;
						case 62:
							self.h_pos+=1;
							self.h_add_op(l_d,33);
							break;
						default:
							var l_tk28=gml_token_bin_op(l_d,68);
							if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk28); else ds_list_add(gml_parser_token_acc,l_tk28);
					}
					break;
				case 60:
					switch(buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8)){
						case 61:
							self.h_pos+=1;
							var l_tk23=gml_token_bin_op(l_d,67);
							if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk23); else ds_list_add(gml_parser_token_acc,l_tk23);
							break;
						case 60:
							self.h_pos+=1;
							self.h_add_op(l_d,32);
							break;
						case 62:
							self.h_pos+=1;
							self.h_add_op(l_d,65);
							break;
						default:
							var l_tk24=gml_token_bin_op(l_d,66);
							if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk24); else ds_list_add(gml_parser_token_acc,l_tk24);
					}
					break;
				case 33:
					if(buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8)==61){
						self.h_pos+=1;
						self.h_add_op(l_d,65);
					} else {
						var l_tk=gml_token_un_op(l_d,1);
						if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk); else ds_list_add(gml_parser_token_acc,l_tk);
					}
					break;
				case 126:
					var l_tk40=gml_token_un_op(l_d,2);
					if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk40); else ds_list_add(gml_parser_token_acc,l_tk40);
					break;
				case 40:
					var l_tk8=gml_token_par_open(l_d);
					if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk8); else ds_list_add(gml_parser_token_acc,l_tk8);
					break;
				case 41:
					var l_tk9=gml_token_par_close(l_d);
					if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk9); else ds_list_add(gml_parser_token_acc,l_tk9);
					break;
				case 91:
					l_c=buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8);
					switch(l_c){
						case 35:case 36:case 63:case 64:case 124:
							self.h_pos+=1;
							var l_tk35=gml_token_sqb_open(l_d,l_c);
							if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk35); else ds_list_add(gml_parser_token_acc,l_tk35);
							break;
						default:
							var l_tk36=gml_token_sqb_open(l_d,0);
							if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk36); else ds_list_add(gml_parser_token_acc,l_tk36);
					}
					break;
				case 93:
					var l_tk37=gml_token_sqb_close(l_d);
					if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk37); else ds_list_add(gml_parser_token_acc,l_tk37);
					break;
				case 123:
					if(self.h_curr_template!=undefined)self.h_curr_template.h_curly_depth++;
					var l_tk38=gml_token_cub_open(l_d);
					if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk38); else ds_list_add(gml_parser_token_acc,l_tk38);
					break;
				case 125:
					l_z=true;
					if(self.h_curr_template!=undefined){
						if(self.h_curr_template.h_curly_depth>0){
							self.h_curr_template.h_curly_depth--;
						} else {
							l_z=false;
							if(self.h_proc_template_segment(l_d)==undefined)return undefined;
						}
					}
					if(l_z){
						var l_tk39=gml_token_cub_close(l_d);
						if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk39); else ds_list_add(gml_parser_token_acc,l_tk39);
					}
					break;
				case 64:
					if(l_ver.h_has_literal_strings){
						l_c=buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8);
						if(l_c==34||l_c==39){
							self.h_pos+=1;
							l_s=self.h_read_literal_string(l_c,l_d);
							if(l_s==undefined)return undefined;
							var l_tk33=gml_token_cstring(l_d,l_s);
							if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk33); else ds_list_add(gml_parser_token_acc,l_tk33);
						} else {
							var l_tk34=gml_token_at_sign(l_d);
							if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk34); else ds_list_add(gml_parser_token_acc,l_tk34);
						}
					} else {
						var l_tk32=gml_token_at_sign(l_d);
						if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk32); else ds_list_add(gml_parser_token_acc,l_tk32);
					}
					break;
				case 34:
					if(l_ver.h_has_string_escape_characters)l_s=self.h_read_esc_string(l_d); else l_s=self.h_read_literal_string(34,l_d);
					if(l_s==undefined)return undefined;
					var l_tk1=gml_token_cstring(l_d,l_s);
					if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk1); else ds_list_add(gml_parser_token_acc,l_tk1);
					break;
				case 39:
					if(l_ver.h_has_string_escape_characters){
						return self.h_error("Single quotes are not allowed for strings",l_d);
					} else {
						l_s=self.h_read_literal_string(39,l_d);
						if(l_s==undefined)return undefined;
						var l_tk7=gml_token_cstring(l_d,l_s);
						if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk7); else ds_list_add(gml_parser_token_acc,l_tk7);
					}
					break;
				case 36:
					if(l_ver.h_has_string_escape_characters&&buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8)==34){
						self.h_pos+=1;
						var l_tk4=gml_token_ident(l_d,"string");
						if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk4); else ds_list_add(gml_parser_token_acc,l_tk4);
						var l_tk5=gml_token_par_open(l_d);
						if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk5); else ds_list_add(gml_parser_token_acc,l_tk5);
						self.h_curr_template=new gml_parser_template_state(l_d,ds_list_size(gml_parser_token_acc),self.h_curr_template);
						var l_tk6=gml_token_cstring(l_d,"ERROR");
						if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk6); else ds_list_add(gml_parser_token_acc,l_tk6);
						if(self.h_proc_template_segment(l_d)==undefined)return undefined;
					} else self.h_proc_hexadecimal(l_d,false);
					break;
				case 35:
					while(self.h_pos<self.h_len){
						l_c=buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8);
						if(l_c==95||l_c>=97&&l_c<=122||l_c>=65&&l_c<=90||l_c>=48&&l_c<=57)self.h_pos+=1; else break;
					}
					l_s=gml_parser_buf_sub(gml_parser_fast_buf,gml_parser_buf_sub_buf,l_start+1,self.h_pos);
					switch(l_s){
						case "define":
							if(self.h_proc_define(l_d)==undefined)return undefined;
							l_checkLineBreakForHeader=true;
							break;
						case "macro":if(self.h_proc_macro_def(l_d)==undefined)return undefined;break;
						case "endregion":case "region":self.h_skip_till_line_end();break;
						default:
							if(string_length(l_s)==6){
								l_i=-1;
								var l_col=0;
								l_z=false;
								while(++l_i<6){
									l_c=string_ord_at(l_s,l_i+1);
									if(l_c>=48&&l_c<=57){
										l_c-=48;
									} else if(l_c>=97&&l_c<=102){
										l_c-=87;
									} else if(l_c>=65&&l_c<=70){
										l_c-=55;
									} else l_c=-1;
									if(l_c<0){
										l_z=true;
										break;
									}
									l_col=((l_col<<4)|l_c);
								}
								if(!l_z){
									l_col=(((l_col&65280)|((l_col&16711680)>>16))|((l_col&255)<<16));
									var l_tk2=gml_token_number(l_d,l_col,undefined);
									if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk2); else ds_list_add(gml_parser_token_acc,l_tk2);
								}
							} else l_z=true;
							if(l_z){
								var l_tk3=gml_token_hash(l_d);
								if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk3); else ds_list_add(gml_parser_token_acc,l_tk3);
								self.h_pos=l_start+1;
							}
					}
					break;
				default:
					if(l_c==95||l_c>=97&&l_c<=122||l_c>=65&&l_c<=90){
						while(self.h_pos<self.h_len){
							l_c=buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8);
							if(l_c==95||l_c>=97&&l_c<=122||l_c>=65&&l_c<=90||l_c>=48&&l_c<=57)self.h_pos+=1; else break;
						}
						l_s=gml_parser_buf_sub(gml_parser_fast_buf,gml_parser_buf_sub_buf,l_start,self.h_pos);
						var l_fn=data_gml_keyword_mapper_map[$ l_s];
						if(l_fn!=undefined){
							var l_tk41=l_fn(l_d);
							if(l_tk41!=undefined){
								if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk41); else ds_list_add(gml_parser_token_acc,l_tk41);
							} else {
								var l_tk42=gml_token_ident(l_d,l_s);
								if(l__gthis.h_curr_macro!=undefined)array_push(l__gthis.h_curr_macro.h_tokens,l_tk42); else ds_list_add(gml_parser_token_acc,l_tk42);
							}
						} else if(gml_std_StringTools_startsWith(l_s,"argument")){
							var l_s_8=gml_std_string_substring(l_s,8);
							if(string_digits(l_s_8)==l_s_8&&string_length(l_s_8)<=2){
								var l_tk43=gml_token_arg_const(l_d,gml_std_Std_parseInt(l_s_8));
								if(self.h_curr_macro!=undefined)array_push(self.h_curr_macro.h_tokens,l_tk43); else ds_list_add(gml_parser_token_acc,l_tk43);
							} else {
								var l_tk44=gml_token_ident(l_d,l_s);
								if(l__gthis.h_curr_macro!=undefined)array_push(l__gthis.h_curr_macro.h_tokens,l_tk44); else ds_list_add(gml_parser_token_acc,l_tk44);
							}
						} else {
							var l_tk45=gml_token_ident(l_d,l_s);
							if(l__gthis.h_curr_macro!=undefined)array_push(l__gthis.h_curr_macro.h_tokens,l_tk45); else ds_list_add(gml_parser_token_acc,l_tk45);
						}
					} else if(l_c>=48&&l_c<=57||l_c==46){
						if(l_c==48){
							l_i=buffer_peek(gml_parser_fast_buf,self.h_pos,buffer_u8);
							if(l_i==120){
								self.h_pos+=1;
								if(self.h_proc_hexadecimal(l_d,true)==undefined)continue;
								continue;
							}
							if(l_i==98){
								self.h_pos+=1;
								if(self.h_proc_binary(l_d)==undefined)continue;
								continue;
							}
						}
						self.h_pos--;
						if(self.h_proc_number(l_d)==undefined)return undefined;
					} else return self.h_error("Unexpected character `"+chr(l_c)+"` (ord "+string(l_c)+")");
			}
		}
		return self.h_finish();
	}
	self.h_row=1;
	self.h_row_start=0;
	self.h_pos=0;
	self.h_curr_template=undefined;
	self.h_curr_macro=undefined;
	self.h_macros=[];
	self.h_token_count=-1;
	self.h_tokens=undefined;
	self.h_source=l_src;
	self.h_pos_source=l_src.h_index;
	static __class__=mt_gml_parser;
}

if(live_enabled)
function gml_parser_set_version(l_ver){
	if(l_ver<10){
		throw gml_std_haxe_Exception_thrown("Supported versions are 14,20,23");
	} else if(l_ver<20){
		gml_parser_default_version=api_api_version_v1;
	} else if(l_ver<23){
		gml_parser_default_version=api_api_version_v2;
	} else gml_parser_default_version=api_api_version_v23;
}

if(live_enabled)
function gml_parser_buf_sub(l_buf,l_str,l_start,l_end){
	var l_len=l_end-l_start;
	buffer_copy(l_buf,l_start,l_len,l_str,0);
	buffer_poke(l_str,l_len,buffer_u8,0);
	buffer_seek(l_str,buffer_seek_start,0);
	return buffer_read(l_str,buffer_string);
}

if(live_enabled)
function gml_parser_char_is_space_init(){
	var l_vec=array_create(256,undefined);
	haxe_ds__vector_vector_impl__fill(l_vec,false);
	l_vec[@32]=true;
	l_vec[@9]=true;
	l_vec[@13]=true;
	l_vec[@10]=true;
	return l_vec;
}
