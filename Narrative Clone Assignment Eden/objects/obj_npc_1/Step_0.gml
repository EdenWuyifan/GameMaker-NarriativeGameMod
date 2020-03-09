/// @description Insert description here
// You can write your code in this editor
depth = -y;

//keyboard checks
space = keyboard_check(vk_space);


//choices
if(instance_exists(obj_textbox)){
	if(obj_textbox.Chooce == 1){
		if(obj_textbox.Highlight == 1 and (place_meeting(x-5,y,obj_avatar) or place_meeting(x,y+5,obj_avatar))){
			choice_one = 1;
			choice_two = 0;
		}
		else if(obj_textbox.Highlight == 2 and (place_meeting(x-5,y,obj_avatar) or place_meeting(x,y+5,obj_avatar))){
			choice_two = 1;
			choice_one = 0;
		}
	}
}


if(place_meeting(x-5,y,obj_avatar) or place_meeting(x,y+5,obj_avatar)){
	if(space and !instance_exists(obj_textbox) and dialog_code == 0){
	
		var _tb = instance_create_layer(0,0,"Instances_textbox",obj_textbox);
	
		var _list = _tb.msgs;
	
		for (var i = 0; i < array_length_1d(msg0); i++){
			var _arr = msg0[i];
		
			ds_list_add(_list, _arr);
		}
		dialog_code = 1;
		choice_one = 0;
		choice_two = 0;
	}
	//choice one
	else if(choice_one and space and !instance_exists(obj_textbox) and dialog_code == 1){
	
		var _tb = instance_create_layer(0,0,"Instances_textbox",obj_textbox);
	
		var _list = _tb.msgs;
	
		for (var i = 0; i < array_length_1d(msg2); i++){
			var _arr = msg2[i];
		
			ds_list_add(_list, _arr);	
		}
		choice_one = 0;
		choice_two = 0;
		dialog_code = 2;
	}
	//ed1: game over
	else if(space and !instance_exists(obj_textbox) and dialog_code == 2){
		room_goto(room_badend);
	}
	//choice two
	else if(choice_two and space and !instance_exists(obj_textbox) and dialog_code == 1){
	
		var _tb = instance_create_layer(0,0,"Instances_textbox",obj_textbox);
	
		var _list = _tb.msgs;
	
		for (var i = 0; i < array_length_1d(msg3); i++){
			var _arr = msg3[i];
		
			ds_list_add(_list, _arr);	
		}
		choice_two = 0;
		choice_one = 0;
		dialog_code = 3;
		//show key
		instance_create_layer(1385,750,"Instances",obj_key);
	}
	//not choose
	else if(space and !instance_exists(obj_textbox) and dialog_code == 1){
	
		var _tb = instance_create_layer(0,0,"Instances_textbox",obj_textbox);
	
		var _list = _tb.msgs;
	
		for (var i = 0; i < array_length_1d(msg1); i++){
			var _arr = msg1[i];
		
			ds_list_add(_list, _arr);
		}
		dialog_code = 1;
		choice_one = 0;
		choice_two = 0;
	}
	
}

//sprite index
if(dialog_code == 3){
	image_index = 1;
}