if variable_global_exists("Rm1posX"){
	if obj_player.x != global.Rm1posX and obj_player.y != global.Rm1posY{
		obj_player.x = global.Rm1posX-22
		obj_player.y = global.Rm1posY
// idk y but it moves right 22 whenever it spawns from this 
		obj_camerafollwing.x = global.Rm1posX-22
		obj_camerafollwing.y = global.Rm1posY

		obj_cameraplace.x = global.Rm1posX-22
		obj_cameraplace.y = global.Rm1posY
	}
}
