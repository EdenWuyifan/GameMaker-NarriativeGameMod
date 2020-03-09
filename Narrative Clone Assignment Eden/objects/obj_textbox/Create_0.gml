/// @description Insert description here
// You can write your code in this editor

//Messsage
msgs = ds_list_create();
msgID = 0;
Chooce = 0;
Highlight = 0;
//current message
Text = "";
Char = 0;
Speed = 0.5;

//message properties

enum MSG{
	TEXT,
	NAME,
	IMAGE,
	SOUND
}

//GUI dimensions
var _guiW = display_get_gui_width();
var _guiH = display_get_gui_height();

//textbox dimentions
height = floor(_guiH * 0.45);
width = _guiW;

//position on screen
x = 0;
y = _guiH -height;

//others
padding = 10;

//player speed
obj_avatar.spd = 0;