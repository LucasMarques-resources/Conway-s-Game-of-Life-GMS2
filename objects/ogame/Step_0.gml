/// @description Insert description here
// You can write your code in this editor

draw_grid = function()
{
	for (var xx = 0; xx < grid_w; xx++)
	{
		for (var yy = 0; yy < grid_h; yy++)
		{
			var _value = grid[# xx, yy];
			var _x = xx * cellSize + 1;
			var _y = yy * cellSize + 1;
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
	var _grid = ds_grid_create(cols, rows);
	ds_grid_clear(_grid, 0);
	
	for (var xx = 1; xx < cols - 1; xx++)
	{
		for (var yy = 1; yy < rows - 1; yy++)
		{
			var _neighbors = 0;
			for (var i = -1; i <= 1; i++)
			{
				for (var j = -1; j <= 1; j++)
				{
					_neighbors += grid[# xx + i, yy + j];
				}
			}
			
			// Subtract current cell's state since it was added in the above loop
			_neighbors -= grid[# xx, yy];
			
			// Loneliness
			if ((grid[# xx, yy] == 1) && (_neighbors < 2))
			{
				_grid[# xx, yy] = 0;
			}
			// Overpopulation
			else if ((grid[# xx, yy] == 1) && (_neighbors > 3))
			{
				_grid[# xx, yy] = 0;
			}
			// Reproduction
			else if ((grid[# xx, yy] == 0) && (_neighbors == 3))
			{
				_grid[# xx, yy] = 1;
			}
			// Stasis
			else
			{
				_grid[# xx, yy] = grid[# xx, yy]; 
			}
		}
	}
	
	ds_grid_copy(grid, _grid);
	
	ds_grid_destroy(_grid);
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


if (gameOn)
{
	timer--;
	if (timer <= 0)
	{
		generate();
		timer = timerTime;
	}
}
//if (keyboard_check_pressed(vk_space)) generate();