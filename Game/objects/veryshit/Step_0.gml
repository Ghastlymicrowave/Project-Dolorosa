
/*
create event rate = 5
slowdown = 10
room_speed = 60
timeheld = 0
maxspeed =1
t1=2
t2=4
t3=6
t4=8
t5=10
vspd=0
hspd=0


lol this is all failed

vspd = vspd + ( keyboard_check(ord("S")) - keyboard_check(ord("W"))) * rate
hspd = vspd + ( keyboard_check(ord("D")) - keyboard_check(ord("A"))) * rate

if !keyboard_check(ord("D")) and !keyboard_check(ord("A")) {if hspd != 0 and hspd > 0 then hspd = hspd - slowdown;
	else     if hspd != 0 and hspd < 0 then hspd = hspd + slowdown;}
if !keyboard_check(ord("S")) and !keyboard_check(ord("W")) {if vspd != 0 and vspd > 0 then vspd = vspd - slowdown;
	else     if vspd != 0 and vspd < 0 then vspd = vspd + slowdown;}
if keyboard_check(ord("D")) and keyboard_check(ord("A")) and keyboard_check(ord("S")) and keyboard_check(ord("W")) and timeheld > 0 { timeheld = timeheld -10; if timeheld < 0 then timeheld = 0; if timeheld > 300 then timeheld = 300}
if keyboard_check(ord("D")) or keyboard_check(ord("A")) or keyboard_check(ord("S")) or keyboard_check(ord("W")) then timeheld = timeheld +1
switch (timeheld) {
case 1: maxspeed = t1 ;break; 
case 30: maxspeed = t2 ;break; 
case 60: maxspeed = t3 ;break; 
case 120: maxspeed = t4 ;break; 
case 240: maxspeed = t5 ;break; 
}

hspeed = hspd
vspeed = vspd
if speed > maxspeed then speed = maxspeed


/* BROKEN SYSTEM WITH DIRECTION AND SHIT
if      vdir = 1 and hdir = 1 { dir = 315; spd = spd+rate }  ///downright
else if	vdir = 1 and hdir =-1 { dir = 225; spd = spd+rate }  ///downleft
else if	vdir = 1 and hdir = 0 { dir = 270; spd = spd+rate }  ///down
else if	vdir =-1 and hdir = 1 { dir = 45 ; spd = spd+rate }  ///upright
else if	vdir =-1 and hdir =-1 { dir = 135; spd = spd+rate }  ///upleft
else if	vdir =-1 and hdir = 0 { dir = 90 ; spd = spd+rate }  ///up
else if	vdir = 0 and hdir = 1 { dir = 0  ; spd = spd+rate }  ///right
else if	vdir = 0 and hdir =-1 { dir = 180; spd = spd+rate }  ///left
else if	vdir = 0 and hdir = 0 { spd = spd - slowdown } ;  ///		NA
if spd < 0 then spd = 0



if dir != direction {
if direction > dir then direction = direction - 5
else if direction < dir then direction = direction + 5
speed = spd 
}


// temp boundry
if x  > room_width then x = room_width
else if x  < 0 then x = 0
if y  > room_width then y = room_width
else if y  < 0 then y = 0