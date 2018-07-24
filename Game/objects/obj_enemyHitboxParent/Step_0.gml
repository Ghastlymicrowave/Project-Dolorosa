x=obj_enemy.x + obj_enemy.hspeed
y=obj_enemy.y + obj_enemy.vspeed

image_angle = point_direction(obj_enemy.x,obj_enemy.y,obj_player.x,obj_player.y)

direction = point_direction(obj_enemy.x,obj_enemy.y,obj_player.x,obj_player.y)

time = time -1
if time = 0 { instance_destroy() }
speed = 80