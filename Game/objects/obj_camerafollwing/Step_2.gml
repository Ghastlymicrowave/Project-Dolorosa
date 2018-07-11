if distance_to_object(obj_cameraplace) > 300 then speedy = distance_to_object(obj_cameraplace)/(cameraspeed)
else if distance_to_object(obj_cameraplace) > 200 then speedy = distance_to_object(obj_cameraplace)/(cameraspeed* 1.25)
else speedy = distance_to_object(obj_cameraplace)/(cameraspeed*1.5)
//speedy =  distance_to_object(obj_cameraplace)/30 -obj_player.speed
move_towards_point(obj_cameraplace.x,obj_cameraplace.y,speedy)
