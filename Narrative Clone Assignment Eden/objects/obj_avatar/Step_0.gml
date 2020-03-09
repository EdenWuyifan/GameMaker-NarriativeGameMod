/// @description Insert description here
// You can write your code in this editor

//depth
depth = -y;

//key
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
space = keyboard_check(vk_space);

move_x = (right - left) * spd;
move_y = (down - up) * spd;


//open the door
if(key == 1){
	if(place_meeting(x + move_x,y,obj_door) or place_meeting(x,y+move_y,obj_door)){
		instance_destroy(obj_door);
	}
}

//collision & move

if(place_meeting(x + move_x,y,obj_wall_1)){
	while(!place_meeting(x + sign(move_x),y,obj_wall_1)){
		x += sign(move_x);
	}
}else if(place_meeting(x + move_x,y,obj_wall_2)){
	while(!place_meeting(x + sign(move_x),y,obj_wall_2)){
		x += sign(move_x);
	}
}else if(place_meeting(x + move_x,y,obj_door)){
	while(!place_meeting(x + sign(move_x),y,obj_door)){
		x += sign(move_x);
	}
}else if(place_meeting(x + move_x,y,obj_npc_1)){
	while(!place_meeting(x + sign(move_x),y,obj_npc_1)){
		x += sign(move_x);
	}
}else if(place_meeting(x + move_x,y,obj_npc_2)){
	while(!place_meeting(x + sign(move_x),y,obj_npc_2)){
		x += sign(move_x);
	}
}else{
	x += move_x;
}

if(place_meeting(x,y+move_y,obj_wall_1)){
	while(!place_meeting(x,y + sign(move_y),obj_wall_1)){
		y += sign(move_y);
	}
}else if(place_meeting(x,y+move_y,obj_wall_2)){
	while(!place_meeting(x,y + sign(move_y),obj_wall_2)){
		y += sign(move_y);
	}
}else if(place_meeting(x,y+move_y,obj_door)){
	while(!place_meeting(x,y + sign(move_y),obj_door)){
		y += sign(move_y);
	}
}else if(place_meeting(x,y+move_y,obj_npc_1)){
	while(!place_meeting(x,y + sign(move_y),obj_npc_1)){
		y += sign(move_y);
	}
}else if(place_meeting(x,y+move_y,obj_npc_2)){
	while(!place_meeting(x,y + sign(move_y),obj_npc_2)){
		y += sign(move_y);
	}
}else{
	y += move_y;
}


//talk with npc

//if(space and (place_meeting(x+5,y,obj_npc_1) or place_meeting(x,y-5,obj_npc_1))){
//	if(!instance_exists(obj_textbox_1)){
//		instance_create_layer(x,y+80,"Instances_textbox",obj_textbox_1);
//	}
//	alarm[0] = room_speed*1;
//}
//if(space and (place_meeting(x+5,y,obj_npc_2) or place_meeting(x,y-5,obj_npc_2))){
//	if(!instance_exists(obj_textbox_2)){
//		instance_create_layer(x,y-60,"Instances_textbox",obj_textbox_2);
//	}
//	alarm[1] = room_speed*1;
//}

