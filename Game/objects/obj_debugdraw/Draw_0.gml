draw_set_font(font_debug)

draw_text(10,10,"timeheld " + string(obj_player.timeheld))
draw_text(10,20,"max " + string(obj_player.maxspeed))
draw_text(10,30,"vspd " + string(obj_player.vspeed))
draw_text(10,40,"hspd " + string(obj_player.hspeed))
draw_text(10,50,"index " + string(obj_player.sprite_index))
draw_text(10,60,"direction " + string(obj_player.direction))
draw_text(10,70,"dir " + string(obj_player.dir))
draw_text(10,80,"combo " + string(obj_player.combo))
draw_text(10,90,"combotime " + string(obj_player.combotime))
draw_text(10,100,"windup " + string(obj_player.windup))
draw_text(10,110,"cooldown " + string(obj_player.cooldown))
draw_text(10,120,"attacking " + string(obj_player.attacking))

draw_text(obj_player.x + 10, obj_player.y - 200,"textcomplete " + string(obj_drawtext.textcomplete))
draw_text(obj_player.x + 10, obj_player.y - 150,"step " + string(obj_control.step))
draw_text(obj_player.x + 10, obj_player.y + 120,"speed " + string(obj_player.speed))

draw_text(obj_player.x-20, obj_player.y-80,"Weapontype " + string(obj_player.weapontype))