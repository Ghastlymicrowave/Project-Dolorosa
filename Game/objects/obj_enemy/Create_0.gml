/// @description Insert description here
// You can write your code in this editor

//comments are variable descriptions

knockback = 0
//momentum variable for knockback
xx = 0
//logged x
yy = 0 
//logged y
kndir = 0
//knockback direction
tick = 0
//knockback immunity timer
tick2 = 0
//pathfinding refresh timer
cx = 0 
//contact x
cy = 0
//contact y


//establish grid and path
global.grid = mp_grid_create(0, 0, room_width, room_height, 1, 1)
path = path_add();