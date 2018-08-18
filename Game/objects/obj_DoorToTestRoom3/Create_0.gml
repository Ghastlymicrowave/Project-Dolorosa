if variable_global_exists("Rm1posX"){
	if obj_player.x != global.Rm1posX{
		obj_player.x = global.Rm1posX
		obj_player.y = global.Rm1posY

		obj_camerafollwing.x = global.Rm1posX
		obj_camerafollwing.y = global.Rm1posY

		obj_cameraplace.x = global.Rm1posX
		obj_cameraplace.y = global.Rm1posY
	}
}