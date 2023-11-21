function screen_shake(_val1,_val2){
	if(!instance_exists(obj_view_camera)) return false;
	with(obj_view_camera){
		shake_length = _val1;
		shake_time = _val2;
		alarm[0] = shake_time;
	}
}