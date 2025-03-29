/// @description nsp_execute_block(Start, End, StrList, ParList)
/// @param Start
/// @param  End
/// @param  StrList
/// @param  ParList
function nsp_execute_block(argument0, argument1, argument2, argument3) {
	/*
	Underlying NSP script.
	*/
	var nspListStr = argument2,
	    nspListPar = argument3;
	var i,list_min,list_max,pri_b,pos,rv;

	list_min=argument0;
	list_max=argument1;

	while (list_min<list_max) {

	 //Find the position of the first semicolon of the highest priority:
		pos=0;
		pri_b=0;
		for (i=list_min; i<=list_max; i+=1)
		{
			if nspListStr[|i]="{"
				pri_b+=1;
			else if nspListStr[|i]="}"
				pri_b-=1;
			if pri_b=0 and (nspListStr[|i]=";" or i=list_max) {
				pos=i;
				break;
			}
		}
	 
	 
	 /*for (i=list_min; i<=list_max; i+=1) begin
            
	  
 
	 end;*/

	 //Pass to master again: 
	 rv=nsp_execute_master(list_min, pos, true, nspListStr, nspListPar);
	 if !is_undefined(rv) return rv;
	 list_min=i+1;
 
	};

	return undefined;
}
