image_angle = obj_player.dir

direction = obj_player.dir

if speed != 0 { speed = 0
spd= speed
}
x=obj_player.x + obj_player.hspeed + cos(direction) * spd
y=obj_player.y + obj_player.vspeed + sin(direction) * spd



time = time -1
if time = 0 { obj_player.attacking=0;instance_destroy() }

if obj_playerstatuses.alive = 0 then instance_destroy()  