//direction keys
var key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
var key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
var key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));

//where are we going
//x_pos = (key_right - key_left) * x_speed;
//y_pos = (key_down - key_up) * y_speed; //-1 = up 1 = down

//right
if (key_right && !place_meeting(x+5, y, obj_blocks) && !place_meeting(x+5, y, obj_rup) && !place_meeting(x+5, y, obj_rdown) && x + 5 < room_width){
	x += mv_speed;
}
//left
if (key_left && !place_meeting(x-5, y, obj_blocks) && !place_meeting(x-5, y, obj_rup) && !place_meeting(x-5, y, obj_rdown) && x - 30 > 0){
	x -= mv_speed;
}
//up
if (key_up && !place_meeting(x, y-5, obj_blocks) && !place_meeting(x, y-5, obj_rup) && !place_meeting(x, y-5, obj_rdown)){
	y -= mv_speed;
}
//down
if (key_down && !place_meeting(x, y+5, obj_blocks) && !place_meeting(x, y+5, obj_rup) && !place_meeting(x, y+5, obj_rdown)){
	y += mv_speed;
}