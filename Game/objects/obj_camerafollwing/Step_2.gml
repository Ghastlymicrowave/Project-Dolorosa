if distance_to_object(obj_cameraplace) > 100 then speedy = distance_to_object(obj_cameraplace)/20
else speedy = distance_to_object(obj_cameraplace)/40
//speedy =  distance_to_object(obj_cameraplace)/30 -obj_player.speed
move_towards_point(obj_cameraplace.x,obj_cameraplace.y,speedy)
