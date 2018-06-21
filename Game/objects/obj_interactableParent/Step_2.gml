if place_meeting(x,y,obj_interacthitbox) { 
	instance_create_depth(obj_interacthitbox.x,obj_interacthitbox.y,-5,obj_indicator)}
else if instance_exists(obj_indicator) then obj_indicator.boom=1