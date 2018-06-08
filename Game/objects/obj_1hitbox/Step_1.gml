x=obj_player.x + obj_player.hspeed
y=obj_player.y + obj_player.vspeed
direction = obj_player.dir
speed = 50
if check = 0 {
	speed = 6
	check = 1}


time = time -1
if time = 0 then instance_destroy()

if instance_exists(obj_1hitbox1) then instance_destroy()