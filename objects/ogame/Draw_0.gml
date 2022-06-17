/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_gray);

for (var row = 0; row < grid_h; row += 1)
{
	draw_line(0, row * celSize, room_width, row * celSize);
}

for (var col = 0; col < grid_w; col += 1)
{
	draw_line(col * celSize, 0, col * celSize, room_height);
}

draw_set_color(c_white);

for (var xx = 0; xx < grid_w; xx += 1)
{
	for (var yy = 0; yy < grid_h; yy += 1)
	{
		var _value = grid[# xx, yy];
		// If is alive
		if (_value)
		{
			var _x = xx * celSize;
			var _y = yy * celSize;
			draw_rectangle(_x, _y, _x + celSize, _y + celSize, false);
		}
	}
}