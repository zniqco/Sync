function draw_tcircle(argument0, argument1, argument2, argument3, argument4) {
	var __i, __drawi;

	if (argument4 = 1)
	 range2 = argument2 + argument3;
	else
	 range2 = argument2 - argument3;
	for (__i = 0; __i < 6; __i += 1) {
	 __drawi = __i * 60;
	 __drawi2 = __drawi + 60;
	 d3d_primitive_begin(pr_trianglefan);
	 d3d_vertex(argument0 + lengthdir_x(argument2, __drawi), argument1 + lengthdir_y(argument2, __drawi), 0);
	 d3d_vertex(argument0 + lengthdir_x(range2, __drawi), argument1 + lengthdir_y(range2, __drawi), 0);
	 d3d_vertex(argument0 + lengthdir_x(range2, __drawi2), argument1 + lengthdir_y(range2, __drawi2), 0);
	 d3d_vertex(argument0 + lengthdir_x(argument2, __drawi2), argument1 + lengthdir_y(argument2, __drawi2), 0);
	 d3d_primitive_end();
	}



}
