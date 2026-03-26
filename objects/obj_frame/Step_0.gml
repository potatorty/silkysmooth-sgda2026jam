// on step

if (distance_to_object(obj_pc1)<=1)
	{
	camera_set_view_target(view_camera[0],id);
	view_set_wport(0,view_sizew);
	view_set_hport(0,view_sizeh);
	camera_set_view_size(view_camera[0],cam_sizew,cam_sizeh);
	camera_set_view_border(view_camera[0],cam_sizew/2,cam_sizeh/2);
	obj_pc1.movespeed = 1;
	}
else
	obj_pc1.movespeed = 1.5;
	
	
	
// end step