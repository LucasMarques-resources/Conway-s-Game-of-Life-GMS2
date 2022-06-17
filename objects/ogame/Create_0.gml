/// @description Insert description here
// You can write your code in this editor

cellSize = 8;
cols = room_width / cellSize;
rows = room_height / cellSize;

grid = ds_grid_create(cols, rows);
grid_w = ds_grid_width(grid);
grid_h = ds_grid_height(grid);

ds_grid_clear(grid, 0);

gameOn = false;

// Draw cells randomly
//for (var xx = 0; xx < grid_w; xx++)
//{
//	for (var yy = 0; yy < grid_h; yy++)
//	{
//		grid[# xx, yy] = choose(0, 1);
//	}	
//}