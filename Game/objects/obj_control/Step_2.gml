


if chat = 1 {
obj_player.maxspeed =0
obj_player.x -= obj_player.hspeed
obj_player.y -= obj_player.vspeed
obj_player.attacking = 0
obj_player.windup = -1
obj_player.cooldown = -1

}

if instance_exists(obj_option) and ID1 !=0 {
ID1.x = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/2) + obj_camerafollwing.hspeed
ID1.y = camera_get_view_y(view_camera[0])+ (camera_get_view_height(view_camera[0])) * .86 + obj_camerafollwing.vspeed
	if ID2 !=0 {
		ID1.x = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/3) + obj_camerafollwing.hspeed
		ID1.y = camera_get_view_y(view_camera[0])+ (camera_get_view_height(view_camera[0])) * .86 + obj_camerafollwing.vspeed
		ID2.x = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/3)*2 + obj_camerafollwing.hspeed
		ID2.y = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])) * .86 + obj_camerafollwing.vspeed
	}
}



if inventory = 1 {
	
	camx = camera_get_view_x(view_camera[0])
	camy = camera_get_view_y(view_camera[0])
	camw = camera_get_view_width(view_camera[0])
	camh = camera_get_view_height(view_camera[0])
	
	if invCreated = 0 
{

	
	invCreated=1
		if numOfItems!=0{
		var i
		var idI
		for (i = 0; i < 10; i ++)
		{
		
		//1 obj 1/1+1
		//2 obj 1/2+1		2/2+1
		//3 obj 1/3+1		2/3+1	3/3+1
		
			tempI = i + 1

			 objId = inv[i,0]
		if objId = 1 { idI = instance_create_depth(camx+(camw*((tempI)/(numOfItems+1))),camy+(camh*(1/2)),-501,Inv_TestObject)}
		
		idI.Hpercent = (idI.x - camx ) / camw
		idI.Vpercent = (idI.y - camy ) / camh
		
		idI.numOfItems = numOfItems
		idI.tempI = tempI
			if i = numOfItems then break
		}
		}

}
}