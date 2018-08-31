
//else if distance_to_object(obj_cameraplace) > 300 then speedy = distance_to_object(obj_cameraplace)/(cameraspeed)
//else
speedy = distance_to_object(obj_cameraplace)/(cameraspeed)
//if distance_to_object(obj_cameraplace) > 100 then speedy = distance_to_object(obj_cameraplace)/(cameraspeed/2)
//speedy =  distance_to_object(obj_cameraplace)/30 -obj_player.speed
move_towards_point(obj_cameraplace.x,obj_cameraplace.y,speedy)


//if obj_player.dashtimer > 0 then cameraspeed = 4
//else cameraspeed = 3