/*if maxspeed > 12 then maxspeed = maxspeed - 1
if mouse_check_button(mb_right) then maxspeed = 20

vspd = vspd + (keyboard_check(ord("S")) - keyboard_check(ord("W"))) * speedrate
hspd = hspd + (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * speedrate

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
repeat(4){
while sqrt(hspeed*hspeed+vspeed*vspeed) > maxspeed 
{
if hspeed > 0 then hspeed = hspeed - 1
else hspeed = hspeed + 1
if vspeed > 0 then vspeed = vspeed - 1
else vspeed = vspeed + 1
}
}

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

}*/


///if maxspeed > 12 then maxspeed = maxspeed - 1
///if mouse_check_button(mb_right) then maxspeed = 20


switch (timeheld) {
case 1: maxspeed = 8 ;break;
case 8: maxspeed = 9 ;break;
case 15: maxspeed = 11 ;break;
case 45: maxspeed = 13 ;break;
case 60: maxspeed = 15 ;break; 
//case 80: maxspeed = 13 ;break;
//case 120: maxspeed = 14 ;break; 
//case 240: maxspeed = 15 ;break; 
}

if keyboard_check(ord("S")) or keyboard_check(ord("W")) or keyboard_check(ord("D")) or keyboard_check(ord("A")) then timeheld = timeheld + 1
else if timeheld !=0 { timeheld = timeheld - 5; if timeheld < 0 then timeheld = 0}

vspd = vspd + (keyboard_check(ord("S")) - keyboard_check(ord("W"))) * speedrate
hspd = hspd + (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * speedrate

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

if keyboard_check(ord("S")) or keyboard_check(ord("W")) or keyboard_check(ord("A")) or keyboard_check(ord("D")) then dir = direction


if 70 > dir and dir > 30 then sprite_index = spr_upR
else if 110 > dir and dir >= 70 then sprite_index = spr_upM
else if 150 > dir and dir >= 110 then sprite_index = spr_upL
else if dir >= 150 and dir <=210 then sprite_index = spr_L
else if 250 > dir and dir > 210 then sprite_index = spr_downL
else if 290 > dir and dir >= 250 then sprite_index = spr_downM
else if 330 > dir and dir >= 290 then sprite_index = spr_downR
else if dir <= 30 or dir >= 330 then sprite_index = spr_R


if mouse_check_button_pressed(mb_left) {
	
	if weapontype=1 {
		if combo = 0 {instance_create_depth(x,y,1,obj_1hitbox); combo = 1; combotime = 200}
		else if combo = 1 {instance_create_depth(x,y,1,obj_1hitbox1); combo = 2; combotime = 200}
	}
	if weapontype=2{
	}
}
if combotime != 0 then combotime = combotime - 1
else combo = 0