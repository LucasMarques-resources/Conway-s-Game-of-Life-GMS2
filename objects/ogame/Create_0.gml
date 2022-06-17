/// @description Insert description here
// You can write your code in this editor

cellSize = 8;
rows = room_width / cellSize;
cols = room_height / cellSize;

grid = ds_grid_create(rows, cols);
grid_w = ds_grid_width(grid);
grid_h = ds_grid_height(grid);

ds_grid_clear(grid, 0);

// Draw cells randomly
//for (var xx = 0; xx < grid_w; xx += 1)
//{
//	for (var yy = 0; yy < grid_h; yy += 1)
//	{
//		grid[# xx, yy] = choose(0, 1);
//	}	
//}