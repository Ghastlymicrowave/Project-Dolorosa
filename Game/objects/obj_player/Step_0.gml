

if timeheld >= 1 and timeheld < 8 then maxspeed = 8
else if timeheld >= 15 and timeheld <=45 then maxspeed = 11 + dashtimer*2
else if timeheld > 45 and timeheld <=60 then maxspeed = 12 + dashtimer*3
else if timeheld >= 60 then maxspeed = 13 + dashtimer*4

//lowering maxspeed 

if windup > 0 or combotime > 0 then maxspeed = windupmax + dashtimer^2

if instance_exists(obj_hitboxparent) then maxspeed = 0
if maxspeed < 0 then maxspeed = 0
if obj_control.chat =1 then maxspeed =2

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



if timeheld > maxtimeheld then timeheld = maxtimeheld

// down 270, right 0, left 180, up 90

//Attacks

if(autofire = 0){

	attackcondition = mouse_check_button_pressed(attackbutton)

}else{

	attackcondition = mouse_check_button(attackbutton)

}

if windup > -1 {windup = windup -1}
if attackcondition{
if attacking =0{
	if cooldown=0{
		attacking =1
		if weapontype=1 { windup=4; windupmax =8 }
   else if weapontype=2 { windup=4; windupmax =8 }
   else if weapontype=3 { windup=3; windupmax =8 }
   else if weapontype=4 { windup=4; windupmax =7}
   else if weapontype=5 { windup=10; windupmax =6 }
   else if weapontype=6 { windup=8; windupmax =7 }
   else if weapontype=7 { windup=7; windupmax =6 }
   else if weapontype=8 { windup=12; windupmax =5 }
   else if weapontype=9 { windup=6; windupmax =7 }
   else if weapontype=10 { windup=10; windupmax =8 }
   else if weapontype=11 { windup=14; windupmax =6 }
   
   isheavy=0
	}
}
}

if attacking != 1 {
	if cooldown <= 0 {
		if (keyboard_check(ord("S")) or keyboard_check(ord("W")) or keyboard_check(ord("A")) or keyboard_check(ord("D"))) and speed > 0 then dir = direction} 
} else {
	
	
	
	//direction = dir
	// HEEEEEEEEEEEEEEEEEEEEEEYYYYYYYYY RYAAAAAAAAAAAAAAAAAAAAAAAAAANNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
	/// INPUT HERE if weapontype = then speed = yaddayadda
	// to make it so that you dash forward while attacking

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
	if mouseaiming = 1 then { dir = point_direction(x,y,mouse_x,mouse_y)
		//direction = point_direction(x,y,mouse_x,mouse_y);
		}
				//		Light combos
	if isheavy=0 {
		//				Weapon 1, Curved sword moveset
	if weapontype=1 {
		if combo = 0 {instance_create_depth(-100,-100,1,obj_midhitbox); combo = 1; combotime = 35; cooldown = 11; obj_midhitbox.time=6}
		else if combo = 1 {instance_create_depth(-100,-100,1,obj_midhitbox); combo = 2; combotime = 35; cooldown = 11; obj_midhitbox.time=6}
		else if combo = 2 {instance_create_depth(-100,-100,1,obj_midhitbox); combo = 3; combotime = 35; cooldown = 11; obj_midhitbox.time=6}
		else if combo = 3 {instance_create_depth(-100,-100,1,obj_midhitbox); combo = 0; combotime = 1; cooldown = 32; obj_midhitbox.time=6}
		}
		//				Weapon 2, Fist weapons moveset
	else if weapontype=2 {
		if combo = 0 {instance_create_depth(-100,-100,1,obj_smlhitbox); combo = 1; combotime = 35; cooldown = 9; obj_smlhitbox.time=3}
		else if combo = 1 {instance_create_depth(-100,-100,1,obj_smlhitbox); combo = 2; combotime = 35; cooldown = 9; obj_smlhitbox.time=3}
		else if combo = 2 {instance_create_depth(-100,-100,1,obj_smlhitbox); combo = 3; combotime = 35; cooldown = 9; obj_smlhitbox.time=3}
		else if combo = 3 {instance_create_depth(-100,-100,1,obj_smlhitbox); combo = 4; combotime = 35; cooldown = 9; obj_smlhitbox.time=3}
		else if combo = 4 {instance_create_depth(-100,-100,1,obj_smlhitbox); combo = 0; combotime = 1; cooldown = 28; obj_smlhitbox.time=3}
		}
		//				Weapon 3, dagger moveset
	else if weapontype=3 {
		if combo = 0 {instance_create_depth(-100,-100,1,obj_smlhitbox); combo = 1; combotime = 35; cooldown = 8; obj_smlhitbox.time=3}
		else if combo = 1 {instance_create_depth(-100,-100,1,obj_smlhitbox); combo = 2; combotime = 35; cooldown = 8; obj_smlhitbox.time=3}
		else if combo = 2 {instance_create_depth(-100,-100,1,obj_smlhitbox); combo = 0; combotime = 1; cooldown = 32; obj_smlhitbox.time=3}
		}
		//				Weapon 4, Rapier moveset
	else if weapontype=4 {
		if combo = 0 {instance_create_depth(-100,-100,1,obj_smlthinhitbox); combo = 1; combotime = 35; cooldown = 11; obj_smlthinhitbox.time=5}
		else if combo = 1 {instance_create_depth(-100,-100,1,obj_smlthinhitbox); combo = 2; combotime = 35; cooldown = 11; obj_smlthinhitbox.time=5}
		else if combo = 2 {instance_create_depth(-100,-100,1,obj_smlthinhitbox); combo = 3; combotime = 35; cooldown = 11; obj_smlthinhitbox.time=5}
		else if combo = 3 {instance_create_depth(-100,-100,1,obj_smlthinhitbox); combo = 0; combotime = 1; cooldown = 30; obj_smlthinhitbox.time=5}
		}
	//					Weapon 5, Hand Axe moveset
	else if weapontype=5 {
		if combo = 0 {instance_create_depth(-100,-100,1,obj_midhitbox); combo = 1; combotime = 35; cooldown=12; obj_midhitbox.time=8}
		else if combo = 1 {instance_create_depth(-100,-100,1,obj_midhitbox); combo = 2; combotime = 35; cooldown=12; obj_midhitbox.time=8}
		else if combo = 2 {instance_create_depth(-100,-100,1,obj_midhitbox); combo = 0; cooldown = 45; combotime=1; obj_midhitbox.time=8}
		}
		//				Weapon 6, Shortsword moveset
	else if weapontype=6 {
		
		if combo = 0 {instance_create_depth(-100,-100,1,obj_midhitbox); combo = 1; combotime = 35; cooldown=11; obj_midhitbox.time=5}
		else if combo = 1 {instance_create_depth(-100,-100,1,obj_midhitbox); combo = 2; combotime = 35; cooldown=11; obj_midhitbox.time=5}
		else if combo = 2 {instance_create_depth(-100,-100,1,obj_midhitbox); combo = 3; combotime = 35; cooldown=11; obj_midhitbox.time=5}
		else if combo = 3 {instance_create_depth(-100,-100,1,obj_midhitbox); combo = 4; cooldown = 40; combotime=10; obj_midhitbox.sprite_index = spr_smallthinhitbox; obj_midhitbox.time=8}	
		}
		//				Weapon 7, Flail moveset
	else if weapontype=7 {
		if combo = 0 {instance_create_depth(-100,-100,1,obj_midhitbox); combo = 1; combotime = 35; cooldown=14; obj_midhitbox.time=6}
		else if combo = 1 {instance_create_depth(-100,-100,1,obj_midhitbox); combo = 0; cooldown = 25; combotime=1; obj_midhitbox.time=6}
	}
	//					Weapon 8, big hammer and stuff like it
	else if weapontype=8 {
		if combo = 0 {instance_create_depth(-100,-100,1,obj_midhitbox); combo = 1; combotime = 35; cooldown=16; obj_midhitbox.time=10}
		else if combo = 1 {instance_create_depth(-100,-100,1,obj_midhitbox); combo = 2; combotime = 35; cooldown=16; obj_midhitbox.time=10}
		else if combo = 2 {instance_create_depth(-100,-100,1,obj_midhitbox); combo = 0; cooldown = 30; combotime=1; obj_midhitbox.time=10}
	}
	//					Weapon 9, Warpick
	else if weapontype=9 {
		
		if combo = 0 {instance_create_depth(-100,-100,1,obj_smlhitbox); combo = 1; combotime = 35; cooldown=10; obj_smlhitbox.time=5}
		else if combo = 1 {instance_create_depth(-100,-100,1,obj_smlhitbox); combo = 2; combotime = 35; cooldown=10; obj_smlhitbox.time=5}
		else if combo = 2 {instance_create_depth(-100,-100,1,obj_smlhitbox); combo = 3; combotime = 35; cooldown=10; obj_smlhitbox.time=5}
		else if combo = 3 {instance_create_depth(-100,-100,1,obj_smlhitbox); combo = 4; cooldown = 40; combotime=10; obj_smlhitbox.time=5}	
	}
	//					Weapon 10, spear
	else if weapontype=10 {
		
		if combo = 0 {instance_create_depth(-100,-100,1,obj_midlonghitbox); combo = 1; combotime = 35; cooldown=10; obj_midlonghitbox.time=5; obj_midlonghitbox.speed=90}
		else if combo = 1 {instance_create_depth(-100,-100,1,obj_midlonghitbox); combo = 2; combotime = 35; cooldown=10; obj_midlonghitbox.time=5; obj_midlonghitbox.speed=90}
		else if combo = 2 {instance_create_depth(-100,-100,1,obj_midlonghitbox); combo = 3; combotime = 35; cooldown=10; obj_midlonghitbox.time=5; obj_midlonghitbox.speed=90}
		else if combo = 3 {instance_create_depth(-100,-100,1,obj_midlonghitbox); combo = 4; cooldown = 40; combotime=10; obj_midlonghitbox.time=5; obj_midlonghitbox.speed=90}	
	}
	
	//					Weapon 11, lance
	else if weapontype=11 {
		
		if combo = 0 {instance_create_depth(-100,-100,1,obj_midlonghitbox); combo = 1; combotime = 35; cooldown=24; obj_midlonghitbox.time=11; obj_midlonghitbox.speed=100}
		else if combo = 1 {instance_create_depth(-100,-100,1,obj_midlonghitbox); combo = 2; combotime = 35; cooldown=24; obj_midlonghitbox.time=11; obj_midlonghitbox.speed=100}
		else if combo = 2 {instance_create_depth(-100,-100,1,obj_midlonghitbox); combo = 3; cooldown = 45; combotime=10; obj_midlonghitbox.time=11; obj_midlonghitbox.speed=100}	
	}
	
	
	
}
}


if(combotime != 0){combotime = combotime - 1}else{combo = 0}

if cooldown !=0 then cooldown = cooldown -1


if attacking = 1 { timesinceattack = timesinceattack +1 } 
else timesinceattack = 0

//Stay within enemy range


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

//Dash

if(keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_shift)&& dashcooldown <= 0){

	dashtimer = 15
	dashcooldown += 40

}

if(dashtimer>0){

	dashtimer --
	maxspeed = 30
	
}else{

	maxspeed = 12

}

if(dashcooldown>0){dashcooldown--}