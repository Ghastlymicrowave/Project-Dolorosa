
x=obj_player.x + obj_player.hspeed
y=obj_player.y + obj_player.vspeed
if obj_player.combo=3 then sprite_index = spr_smallthinhitbox
if obj_player.combo=3 then image_angle = obj_player.dir

direction = obj_player.dir
speed = 80

time = time -1
if time = 0 { obj_player.attacking=0; obj_player.combo=0 ;instance_destroy() }

if obj_player.combo !=3{
if mouse_check_button_pressed(mb_left) {obj_player.attacking = 0; instance_destroy()}
}