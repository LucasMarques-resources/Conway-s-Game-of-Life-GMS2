/// @description Insert description here
// You can write your code in this editor

// Draw the actual grid
draw_grid();

click_grid();

draw_set_color(c_gray);

for (var row = 0; row < grid_h; row++)
{
	draw_line(0, row * cellSize, room_width, row * cellSize);
}

for (var col = 0; col < grid_w; col++)
{
	draw_line(col * cellSize, 0, col * cellSize, room_height);
}

draw_set_color(c_white);

// Draw text
draw_set_color(c_red);
var _text = "ENTER - play / pause\nR - restart";
var _m = 5;
var _text_w = _m + string_width(_text);
var _text_h = _m + string_height(_text);
draw_rectangle_color(0, _m, _text_w + _m, _text_h, c_black, c_black, c_black, c_black, false);
draw_set_font(fntText);
draw_text(_m, _m, _text);
draw_set_color(c_white);