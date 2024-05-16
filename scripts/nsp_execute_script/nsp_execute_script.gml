/// @description nsp_execute_script(Script name, Argument array)
/// @param Script name
/// @param  Argument array
function nsp_execute_script(argument0, argument1) {
	/*
	Underlying NSP script. Can be changed by user (read NSP Documentation for more info).
	*/
	var nspToken=global.nspToken;
	var rv,a;
	//See if any arguments are strings and convert if necessary:
	if(is_array(argument1)){
		 for(var i=0; i<array_length(argument1); i+=1) {
			if(is_string(argument1[i])) {
				if(nsp_is_string(argument1[i])) {
					argument1[i] = string_copy(argument1[i],2,string_length(argument1[i])-2)
				}
			}
		 }
	}
	//PART 1 (Built-in scripts): ------------------------------------------------------------------------------------------
	if (is_array(argument1)){
		a=array_length(argument1)
	}
	else {
		a=0
	}
	if(global.___nspforceasync){
		switch(argument0){
			case "show_message":
				argument0 = "show_message_async"
			break
			case "get_string":
				argument0 = "get_string_async"
			break
			case "get_integer":
				argument0 = "get_integer_async"
			break
			case "get_login":
				argument0 = "get_login_async"
			break
			case "show_question":
				argument0 = "show_question_async"
			break
		}
	}
	if(global.___nspfunctions[$string(argument0)] != undefined){
		// this has to be done as script_execute is REALLY buggy regarding some built-in functions. 
		// for example tilemap_tileset(tilemap, tilespr) 
		// which turns into tilemap_tileset() ???
		switch(a){
	        case 0:
	            return global.___nspfunctions[$string(argument0)]()
	        break
	        case 1:
	            return global.___nspfunctions[$string(argument0)](argument1[0])
	        break
	        case 2:
	        	return global.___nspfunctions[$string(argument0)](argument1[0],argument1[1])
            break
            case 3:
            	return global.___nspfunctions[$string(argument0)](argument1[0],argument1[1],argument1[2])
	        break
	        case 4:
	        	return global.___nspfunctions[$string(argument0)](argument1[0],argument1[1],argument1[2],argument1[3])
            break
            case 5:
            	return global.___nspfunctions[$string(argument0)](argument1[0],argument1[1],argument1[2],argument1[3],argument1[4])
            break
            case 6:
	            return global.___nspfunctions[$string(argument0)](argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5])
            break
            case 7:
	            return global.___nspfunctions[$string(argument0)](argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6])
            break
            case 8:
	            return global.___nspfunctions[$string(argument0)](argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6],argument1[7])
            break
            case 9:
	            return global.___nspfunctions[$string(argument0)](argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6],argument1[7],argument1[8])
            break
            case 10:
	            return global.___nspfunctions[$string(argument0)](argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6],argument1[7],argument1[8],argument1[9])
            break
            case 11:
	            return global.___nspfunctions[$string(argument0)](argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6],argument1[7],argument1[8],argument1[9],argument1[10])
            break
            case 12:
	            return global.___nspfunctions[$string(argument0)](argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6],argument1[7],argument1[8],argument1[9],argument1[10],argument1[11])
            break
            case 13:
	            return global.___nspfunctions[$string(argument0)](argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6],argument1[7],argument1[8],argument1[9],argument1[10],argument1[11],argument1[12])
            break
            case 14:
	            return global.___nspfunctions[$string(argument0)](argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6],argument1[7],argument1[8],argument1[9],argument1[10],argument1[11],argument1[12],argument1[13])
            break
            case 15:
	            return global.___nspfunctions[$string(argument0)](argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6],argument1[7],argument1[8],argument1[9],argument1[10],argument1[11],argument1[12],argument1[13],argument1[14])
            break
            case 16:
	            return global.___nspfunctions[$string(argument0)](argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6],argument1[7],argument1[8],argument1[9],argument1[10],argument1[11],argument1[12],argument1[13],argument1[14],argument1[15])
            break
            case 17:
	            return global.___nspfunctions[$string(argument0)](argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6],argument1[7],argument1[8],argument1[9],argument1[10],argument1[11],argument1[12],argument1[13],argument1[14],argument1[15],argument1[16])
            break
            case 18:
	            return global.___nspfunctions[$string(argument0)](argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6],argument1[7],argument1[8],argument1[9],argument1[10],argument1[11],argument1[12],argument1[13],argument1[14],argument1[15],argument1[16],argument1[17])
            break
            case 19:
	            return global.___nspfunctions[$string(argument0)](argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6],argument1[7],argument1[8],argument1[9],argument1[10],argument1[11],argument1[12],argument1[13],argument1[14],argument1[15],argument1[16],argument1[17],argument1[18])
            break
            case 20:
	            return global.___nspfunctions[$string(argument0)](argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6],argument1[7],argument1[8],argument1[9],argument1[10],argument1[11],argument1[12],argument1[13],argument1[14],argument1[15],argument1[16],argument1[17],argument1[18],argument1[19])
            break
            case 21:
	            return global.___nspfunctions[$string(argument0)](argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6],argument1[7],argument1[8],argument1[9],argument1[10],argument1[11],argument1[12],argument1[13],argument1[14],argument1[15],argument1[16],argument1[17],argument1[18],argument1[19],argument1[20])
            break
            case 22:
	            return global.___nspfunctions[$string(argument0)](argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6],argument1[7],argument1[8],argument1[9],argument1[10],argument1[11],argument1[12],argument1[13],argument1[14],argument1[15],argument1[16],argument1[17],argument1[18],argument1[19],argument1[20],argument1[21])
            break
            case 23:
	            return global.___nspfunctions[$string(argument0)](argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6],argument1[7],argument1[8],argument1[9],argument1[10],argument1[11],argument1[12],argument1[13],argument1[14],argument1[15],argument1[16],argument1[17],argument1[18],argument1[19],argument1[20],argument1[21],argument1[22])
            break
            case 24:
	            return global.___nspfunctions[$string(argument0)](argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6],argument1[7],argument1[8],argument1[9],argument1[10],argument1[11],argument1[12],argument1[13],argument1[14],argument1[15],argument1[16],argument1[17],argument1[18],argument1[19],argument1[20],argument1[21],argument1[22],argument1[23])
            break
            case 25:
	            return global.___nspfunctions[$string(argument0)](argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6],argument1[7],argument1[8],argument1[9],argument1[10],argument1[11],argument1[12],argument1[13],argument1[14],argument1[15],argument1[16],argument1[17],argument1[18],argument1[19],argument1[20],argument1[21],argument1[22],argument1[23],argument1[24])
            break
            case 26:
	            return global.___nspfunctions[$string(argument0)](argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6],argument1[7],argument1[8],argument1[9],argument1[10],argument1[11],argument1[12],argument1[13],argument1[14],argument1[15],argument1[16],argument1[17],argument1[18],argument1[19],argument1[20],argument1[21],argument1[22],argument1[23],argument1[24],argument1[25])
            break
            case 27:
	            return global.___nspfunctions[$string(argument0)](argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6],argument1[7],argument1[8],argument1[9],argument1[10],argument1[11],argument1[12],argument1[13],argument1[14],argument1[15],argument1[16],argument1[17],argument1[18],argument1[19],argument1[20],argument1[21],argument1[22],argument1[23],argument1[24],argument1[25],argument1[26])
            break
            case 28:
	            return global.___nspfunctions[$string(argument0)](argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6],argument1[7],argument1[8],argument1[9],argument1[10],argument1[11],argument1[12],argument1[13],argument1[14],argument1[15],argument1[16],argument1[17],argument1[18],argument1[19],argument1[20],argument1[21],argument1[22],argument1[23],argument1[24],argument1[25],argument1[26],argument1[27])
            break
            case 29:
	            return global.___nspfunctions[$string(argument0)](argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6],argument1[7],argument1[8],argument1[9],argument1[10],argument1[11],argument1[12],argument1[13],argument1[14],argument1[15],argument1[16],argument1[17],argument1[18],argument1[19],argument1[20],argument1[21],argument1[22],argument1[23],argument1[24],argument1[25],argument1[26],argument1[27],argument1[28])
            break
            case 30:
	            return global.___nspfunctions[$string(argument0)](argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6],argument1[7],argument1[8],argument1[9],argument1[10],argument1[11],argument1[12],argument1[13],argument1[14],argument1[15],argument1[16],argument1[17],argument1[18],argument1[19],argument1[20],argument1[21],argument1[22],argument1[23],argument1[24],argument1[25],argument1[26],argument1[27],argument1[28],argument1[29])
            break
            case 31:
	            return global.___nspfunctions[$string(argument0)](argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6],argument1[7],argument1[8],argument1[9],argument1[10],argument1[11],argument1[12],argument1[13],argument1[14],argument1[15],argument1[16],argument1[17],argument1[18],argument1[19],argument1[20],argument1[21],argument1[22],argument1[23],argument1[24],argument1[25],argument1[26],argument1[27],argument1[28],argument1[29],argument1[30])
            break
            case 32:
	            return global.___nspfunctions[$string(argument0)](argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6],argument1[7],argument1[8],argument1[9],argument1[10],argument1[11],argument1[12],argument1[13],argument1[14],argument1[15],argument1[16],argument1[17],argument1[18],argument1[19],argument1[20],argument1[21],argument1[22],argument1[23],argument1[24],argument1[25],argument1[26],argument1[27],argument1[28],argument1[29],argument1[30],argument1[31])
            break
			default:
				NSP_notify("SCRIPT: nsp_execute_script. ERROR: Too many arguments. (Max 32)");
				return nspToken[NSP_TOK.abort];
			break
		}
	}
	if asset_get_type(argument0) != asset_script {
		NSP_notify("SCRIPT: nsp_execute_script. ERROR: Script not supported ( "+argument0+" ).");
		return nspToken[NSP_TOK.abort];
	}

	//PART 2 (Custom scripts): --------------------------------------------------------------------------------------------

	argument0=asset_get_index(argument0);

	 if (is_array(argument1)){
		a=array_length(argument1)
	 }
	 else{
		 a=0
	 }

	switch(a) begin

	 case 0:
		rv=script_execute(argument0);
	  break;
	  
	 default:
		rv=script_execute_ext(argument0,argument1);
	 break;
 
	end;

	return rv;
}