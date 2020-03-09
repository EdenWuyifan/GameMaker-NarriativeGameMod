/// @description Insert description here
// You can write your code in this editor
timer ++;
space = keyboard_check(vk_space);

if(timer >= 50){
	if(space){
		room_goto(room_start);
	}
}