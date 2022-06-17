/// @description Insert description here
// You can write your code in this editor

celSize = 8;
rows = room_width / celSize;
cols = room_height / celSize;

grid = ds_grid_create(rows, cols);
grid_w = ds_grid_width(grid);
grid_h = ds_grid_height(grid);

ds_grid_clear(grid, 0);

for (var xx = 0; xx < grid_w; xx += 1)
{
	for (var yy = 0; yy < grid_h; yy += 1)
	{
		grid[# xx, yy] = choose(0, 1);
	}	
}