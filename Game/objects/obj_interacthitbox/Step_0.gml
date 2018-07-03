x=obj_player.x + obj_player.hspeed
y=obj_player.y + obj_player.vspeed

image_angle = obj_player.dir

direction = obj_player.dir




if place_meeting(x,y,obj_interactableParent){ 
	
	if indicatorexists = 0 {
		instance_create_depth(x,y+30,-5,obj_indicator)
		indicatorexists=1
	}
	
	
	
	
}
else if instance_exists(obj_indicator) then obj_indicator.boom=1


