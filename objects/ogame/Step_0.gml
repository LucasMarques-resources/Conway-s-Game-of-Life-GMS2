/// @description Insert description here
// You can write your code in this editor

draw_grid = function()
{
	for (var xx = 0; xx < grid_w; xx += 1)
	{
		for (var yy = 0; yy < grid_h; yy += 1)
		{
			var _value = grid[# xx, yy];
			var _x = xx * cellSize;
			var _y = yy * cellSize;
			// If is alive
			if (_value)
				draw_rectangle(_x, _y, _x + cellSize, _y + cellSize, false);
			else
				draw_rectangle_color(_x, _y, _x + cellSize, _y + cellSize, c_black, c_black, c_black, c_black, false);
		}
	}	
}

generate = function()
{
	for (var xx = 1; xx < grid_w - 1; xx += 1)
	{
		for (var yy = 1; yy < grid_h - 1; yy += 1)
		{
			var _neighbors = 0;
			for (var i = -1; i <= 1; i++)
			{
				for (var j = -1; j <= 1; j++)
				{
					_neighbors += grid[# xx + i, yy + j];
				}
			}
		}
	}
	
	// Rules of life
}

click_grid = function()
{
	if (mouse_check_button(mb_left))
		grid[# mouse_x / cellSize, mouse_y / cellSize] = 1;
	else if (mouse_check_button(mb_right))
	{
		grid[# mouse_x / cellSize,  mouse_y / cellSize] = 0;
	}
}


generate();