/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_gray);

for (var row = 0; row < grid_h; row += 8)
{
	draw_line(0, row, grid_w, row);
}

for (var col = 0; col < grid_w; col += 8)
{
	draw_line(col, 0, col, grid_h);
}

draw_set_color(c_white);