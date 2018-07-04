if distance_to_object(obj_cameraplace) > 150 then speedy = distance_to_object(obj_cameraplace)/15
else if distance_to_object(obj_cameraplace) > 50 then speedy = distance_to_object(obj_cameraplace)/20
else speedy = distance_to_object(obj_cameraplace)/30
//speedy =  distance_to_object(obj_cameraplace)/30 -obj_player.speed
move_towards_point(obj_cameraplace.x,obj_cameraplace.y,speedy)
