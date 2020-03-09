/// @description Insert description here
// You can write your code in this editor
if(move_y > 0){
	image_speed = 1;
	sprite_index = spr_avatar_down;
}else if(move_y < 0){
	image_speed = 1;
	sprite_index = spr_avatar_up;
}else if(move_x > 0){
	image_speed = 1;
	sprite_index = spr_avatar_right;
}else if(move_x < 0){
	image_speed = 1;
	sprite_index = spr_avatar_left;
}else{
	image_speed = 0;
}

draw_self();