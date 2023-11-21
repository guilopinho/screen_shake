if(instance_exists(target)){
	x_to = target.x - (view_width / 2);
	y_to = target.y - (view_height / 2);
	
	x_to = clamp(x_to,0,room_width - view_width);
	y_to = clamp(y_to,0,room_height - view_height);
	
	if(shake_length != 0){
		x_to+=random_range(-shake_length,shake_length);
		y_to+=random_range(-shake_length,shake_length);
	}
	
	var _cx = camera_get_view_x(view_camera[0]);
	var _cy = camera_get_view_y(view_camera[0]);
	
	var _nx = lerp(_cx,x_to,0.1);
	var _ny = lerp(_cy,y_to,0.1);
	
	camera_set_view_pos(view_camera[0],_nx,_ny);
}