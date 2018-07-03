/// @description Insert description here

	 
if(distance_to_object(obj_player)>50&&tick<=0&&tick2<=0){

  if(mp_grid_path(global.grid, path, x, y, obj_player.x +random_range(-50,50), obj_player.y +random_range(-50,50), 1))
     {
     path_start(path, 3, path_action_stop, 0);
     }
}