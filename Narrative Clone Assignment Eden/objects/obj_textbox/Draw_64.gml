/// @description Insert description here
// You can write your code in this editor
var _arr = msgs[|msgID];

var _name = _arr[MSG.NAME];
var _image = _arr[MSG.IMAGE];

//text font



//textbox
draw_text_box(x,y,width,height,spr_textbox_1,0);

//draw position
var _drawX = x + padding;
var _drawY = y + padding;

//draw image
if(sprite_exists(_image)){
	var _imageW = sprite_get_width(_image);
	var _imageH = sprite_get_height(_image);
	
	draw_sprite(_image,0,_drawX + _imageW / 2, _drawY + _imageH / 2);
	
	_drawX += _imageW + padding;

}

//text color
draw_set_color(c_white);

//draw name
draw_set_font(font_game_bold);
draw_text(_drawX,_drawY,_name);

_drawY += string_height(_name) + padding;

//get maximum width
var _maxW = width - (_drawX + padding);

//draw text
draw_set_font(font_game);
if(Chooce == 0){
	draw_text_ext(_drawX,_drawY,Text,-1,_maxW);
}else{
	if(Highlight == 1){
		draw_set_color(c_red);
		draw_text_ext(_drawX,_drawY,ChoiceOne,-1,_maxW);
		_drawY += string_height(ChoiceOne) + padding;
		draw_set_color(c_white);
		draw_text_ext(_drawX,_drawY,ChoiceTwo,-1,_maxW);
	}else if(Highlight == 2){
		draw_set_color(c_white);
		draw_text_ext(_drawX,_drawY,ChoiceOne,-1,_maxW);
		_drawY += string_height(ChoiceOne) + padding;
		draw_set_color(c_red);
		draw_text_ext(_drawX,_drawY,ChoiceTwo,-1,_maxW);
		draw_set_color(c_white);
	}else{
		draw_text_ext(_drawX,_drawY,ChoiceOne,-1,_maxW);
		_drawY += string_height(ChoiceOne) + padding;
		draw_text_ext(_drawX,_drawY,ChoiceTwo,-1,_maxW);
	}
}


