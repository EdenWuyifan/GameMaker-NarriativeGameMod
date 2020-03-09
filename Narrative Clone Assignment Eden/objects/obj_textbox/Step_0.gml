/// @description Insert description here
// You can write your code in this editor
var _arr = msgs[|msgID];

var _text = _arr[MSG.TEXT];
var _sound = _arr[MSG.SOUND];


if(string_copy(_text,1,1) == "1"){
	ChoiceOne = string_copy(_text,1,string_pos("2",_text)-1);
	ChoiceTwo = string_copy(_text,string_pos("2",_text),string_length(_text));
	Chooce = 1;
	if(keyboard_check_pressed(vk_up)){
		Highlight = 1;
	}else if(keyboard_check_pressed(vk_down)){
		Highlight = 2;
	}
	if (keyboard_check_pressed(vk_space)){
	
		//go to the next message
		if(msgID < ds_list_size(msgs) - 1){
			msgID++;
			Char = 0;
		
		}
		//close
		else{
			instance_destroy();
		}
	}
}
else{
	Chooce = 0;
	Text = string_copy(_text,1,Char);


	if(Char <= string_length(_text)){
		//sound play
		if(Char == 0){
			audio_play_sound(_sound,1,0);
		}
	
		Char += Speed;
	
		if(keyboard_check_pressed(vk_space)){
			Char = string_length(_text)-1;
		}
	}

	else if (keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_down)){
	
	
		//go to the next message
		if(msgID < ds_list_size(msgs) - 1){
			msgID++;
			Char = 0;
		

		}
		//close
		else{
			instance_destroy();
		}
	}
}