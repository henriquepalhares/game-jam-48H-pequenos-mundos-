
if(position_meeting(mouse_x,mouse_y,self) ){
	image_blend = c_silver;
	if(mouse_check_button(mb_left)){
	room_goto(rm_menu);
}
}
else{
	image_blend = c_white;
}