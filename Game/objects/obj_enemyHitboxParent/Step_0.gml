x=target.x + target.hspeed
y=target.y + target.vspeed


image_angle = point_direction(target.x,target.y,obj_player.x,obj_player.y)

direction = point_direction(target.x,target.y,obj_player.x,obj_player.y)

time = time -1
if time = 0 { instance_destroy() }
speed = 80