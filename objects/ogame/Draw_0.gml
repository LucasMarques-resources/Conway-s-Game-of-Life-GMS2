/// @description Insert description here
// You can write your code in this editor

// Draw the actual grid
draw_grid();

click_grid();

draw_set_color(c_gray);

for (var row = 0; row < grid_h; row += 1)
{
	draw_line(0, row * cellSize, room_width, row * cellSize);
}

for (var col = 0; col < grid_w; col += 1)
{
	draw_line(col * cellSize, 0, col * cellSize, room_height);
}

draw_set_color(c_white);
