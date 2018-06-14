

if timeheld >= 1 and timeheld < 8 then maxspeed = 8
else if timeheld >= 15 and timeheld <=45 then maxspeed = 11
else if timeheld > 45 and timeheld <=60 then maxspeed = 12
else if timeheld >= 60 then maxspeed = 13

//lowering maxspeed 
if attacking = 1 then maxspeed = maxspeed - timesinceattack 
if maxspeed < 0 then maxspeed = 0

//if attacking = 1 then maxspeed = 3

if keyboard_check(ord("S")) or keyboard_check(ord("W")) or keyboard_check(ord("D")) or keyboard_check(ord("A")) then timeheld = timeheld + 1
else if timeheld !=0 { timeheld = timeheld - 5; if timeheld < 0 then timeheld = 0}

if attacking !=1{
	
vspd = vspd + (keyboard_check(ord("S")) - keyboard_check(ord("W"))) * speedrate
hspd = hspd + (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * speedrate
}
if !keyboard_check(ord("S")) and vspd > 0 then  vspd = vspd -1 
if !keyboard_check(ord("W")) and vspd < 0 then  vspd = vspd +1 
if !keyboard_check(ord("A")) and hspd < 0 then  hspd = hspd +1
if !keyboard_check(ord("D")) and hspd > 0 then  hspd = hspd -1

if hspd > maxspeed then hspd = maxspeed
else if hspd < -maxspeed then hspd = -maxspeed
if vspd > maxspeed then vspd = maxspeed
else if vspd < -maxspeed then vspd = -maxspeed

hspeed = hspd
vspeed = vspd
//repeat(4){
while sqrt(hspeed*hspeed+vspeed*vspeed) > maxspeed 
{
if hspeed > 0 then hspeed = hspeed - 1
else hspeed = hspeed + 1
if vspeed > 0 then vspeed = vspeed - 1
else vspeed = vspeed + 1
}
//}

///if speed > maxspeed then speed = maxspeed



// if attacking setting speed

//                                                 moving while attacking code right here \/

/*
if instance_exists(obj_7hitbox) then{
	speed = 3
	direction = dir
hspeed= floor(hspeed)
vspeed= floor(vspeed)
}*/



// collision

while place_meeting(x+hspeed,y,obj_obstacle) {
	if hspeed > 0 then hspeed = hspeed -1
	else hspeed = hspeed +1
	hspd = 0
}
while place_meeting(x,y+vspeed,obj_obstacle) {
if vspeed > 0 then vspeed = vspeed -1
else vspeed = vspeed +1
vspd = 0
}

while place_meeting(x+hspeed,y+vspeed,obj_obstacle) {
	if hspeed > 0 then hspeed = hspeed -1
	else hspeed = hspeed +1
	if vspeed > 0 then vspeed = vspeed -1
	else vspeed = vspeed +1

}






if timeheld > maxtimeheld then timeheld = maxtimeheld

// down 270, right 0, left 180, up 90
if windup > -1 {windup = windup -1}
if mouse_check_button_pressed(mb_left){
if attacking =0{
	if cooldown=0{
		if mouseaiming = 1 then dir = point_direction(x,y,mouse_x,mouse_y)
		if weapontype=1 { windup=1; attacking=1}
   else if weapontype=6 { windup=10; attacking=1}
   else if weapontype=7 { windup=5; attacking=1}
   else if weapontype=8 { windup=7; attacking=1}
	}
}
}

if attacking != 1 {
if (keyboard_check(ord("S")) or keyboard_check(ord("W")) or keyboard_check(ord("A")) or keyboard_check(ord("D"))) and speed > 0 then dir = direction
}

if 70 > dir and dir > 30 then sprite_index = spr_upR
else if 110 > dir and dir >= 70 then sprite_index = spr_upM
else if 150 > dir and dir >= 110 then sprite_index = spr_upL
else if dir >= 150 and dir <=210 then sprite_index = spr_L
else if 250 > dir and dir > 210 then sprite_index = spr_downL
else if 290 > dir and dir >= 250 then sprite_index = spr_downM
else if 330 > dir and dir >= 290 then sprite_index = spr_downR
else if dir <= 30 or dir >= 330 then sprite_index = spr_R


//attacking
if windup = 0 {
	if weapontype=1 {
	}
	if weapontype=2 {
	}
	if weapontype=3 {
	}
	if weapontype=4 {
	}
	if weapontype=5 {
	} //				Weapon 6, Hand Axe moveset
	if weapontype=6 {
		if combo = 0 {instance_create_depth(-100,-100,1,obj_midhitbox); combo = 1; combotime = 35; cooldown=12
																				obj_midhitbox.time=8}
		else if combo = 1 {instance_create_depth(-100,-100,1,obj_midhitbox); combo = 2; combotime = 35; cooldown=12
																				obj_midhitbox.time=8}
		else if combo = 2 {instance_create_depth(-100,-100,1,obj_midhitbox); combo = 3; cooldown = 30; combotime=1
																				obj_midhitbox.time=8}
	} //				Weapon 7, Shortsword moveset
	if weapontype=7 {
		if combo = 0 {instance_create_depth(-100,-100,1,obj_midhitbox); combo = 1; combotime = 35; cooldown=10
																				obj_midhitbox.time=5}
		else if combo = 1 {instance_create_depth(-100,-100,1,obj_midhitbox); combo = 2; combotime = 35; cooldown=15
																				obj_midhitbox.time=8}
		else if combo = 2 {instance_create_depth(-100,-100,1,obj_midhitbox); combo = 3; cooldown = 30; combotime=1;
												obj_midhitbox.sprite_index = spr_smallthinhitbox; obj_midhitbox.time=5}		
	}//					Weapon 8, Flail moveset
	if weapontype=8{
		if combo = 0 {instance_create_depth(-100,-100,1,obj_midhitbox); combo = 1; combotime = 35; cooldown=14
																				obj_midhitbox.time=10}
		else if combo = 1 {instance_create_depth(-100,-100,1,obj_midhitbox); combo = 2; cooldown = 25; combotime=1
																				obj_midhitbox.time=10}
	}
}
if(combotime != 0){combotime = combotime - 1}else{combo = 0}

if cooldown !=0 then cooldown = cooldown -1


if attacking = 1 { timesinceattack = timesinceattack +1 } 
else timesinceattack = 0
