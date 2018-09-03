



if timeheld >= 1 and timeheld < 8 then maxspeed = 8
else if timeheld >= 15 and timeheld <=45 then maxspeed = 11 + dashtimer*2
else if timeheld > 45 and timeheld <=60 then maxspeed = 12 + dashtimer*3
else if timeheld >= 60 then maxspeed = 13 + dashtimer*4

//lowering maxspeed 

if windup > 0 or combotime > 0 then maxspeed = windupmax + dashtimer^2

#region movement
if instance_exists(obj_hitboxparent) then maxspeed = 0
if maxspeed < 0 then maxspeed = 0
if obj_control.chat =1 then maxspeed =2

if keyboard_check(ord("S")) or keyboard_check(ord("W")) or keyboard_check(ord("D")) or keyboard_check(ord("A")) then timeheld = timeheld + 1
else if timeheld !=0 { timeheld = timeheld - 5; if timeheld < 0 then timeheld = 0}

if /*attacking !=1 and*/ obj_playerstatuses.alive =1 {
	
vspd = vspd + (keyboard_check(ord("S")) - keyboard_check(ord("W"))) * speedrate
hspd = hspd + (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * speedrate
}
if vspd > 0 and ( obj_playerstatuses.alive = 0 or !keyboard_check(ord("S"))) then  vspd = vspd -1 
if vspd < 0 and ( obj_playerstatuses.alive = 0 or !keyboard_check(ord("W"))) then  vspd = vspd +1 
if hspd < 0 and ( obj_playerstatuses.alive = 0 or !keyboard_check(ord("A"))) then  hspd = hspd +1
if hspd > 0 and ( obj_playerstatuses.alive = 0 or !keyboard_check(ord("D"))) then  hspd = hspd -1

if hspd > maxspeed then hspd = maxspeed
else if hspd < -maxspeed then hspd = -maxspeed
if vspd > maxspeed then vspd = maxspeed
else if vspd < -maxspeed then vspd = -maxspeed

hspeed = hspd
vspeed = vspd
//repeat(4){
#endregion

#region Dash

if((keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_shift)) and dashcooldown <= 0 and obj_playerstatuses.alive =1){
	dashdir = dir
	dashtimer = 10
	dashcooldown = 20

}

if(dashtimer>0){
	if dashtimer > 0{ speed = 22 maxspeed = 22}
	direction = dashdir
	dashtimer = dashtimer-1
	
}else{
	maxspeed = 12
}
if(dashcooldown>0){dashcooldown=dashcooldown-1}
#endregion
#region movement cont.
while sqrt(hspeed*hspeed+vspeed*vspeed) > maxspeed 
{
if hspeed > 0 then hspeed = hspeed - 1
else hspeed = hspeed + 1
if vspeed > 0 then vspeed = vspeed - 1
else vspeed = vspeed + 1
}


if timeheld > maxtimeheld then timeheld = maxtimeheld
#endregion
// down 270, right 0, left 180, up 90

//Attacks
#region autofire 
if(autofire = 0){

	attackcondition = mouse_check_button_pressed(attackbutton)

}else{

	attackcondition = mouse_check_button(attackbutton)

}
#endregion
#region set windups
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
#endregion



if obj_control.chat =1 then speed = 0

	#region setting sprites
if 70 > dir and dir > 30 {  
	if speed > 1 then sprite_index= spr_upRWalk 
	else if attacking !=0 then sprite_index = spr_upRHit 
	else sprite_index = spr_upR}

else if 110 > dir and dir >= 70 { 
	if speed > 1 then sprite_index= spr_upMWalk 
	else if attacking !=0 then sprite_index = spr_upMHit 
	else sprite_index = spr_upM}
	
else if 150 > dir and dir >= 110 {
	if speed > 1 then sprite_index= spr_upLWalk
	else if attacking !=0 then sprite_index = spr_upLHit 
	else sprite_index = spr_upL}
	
else if dir >= 150 and dir <=210 {
	if speed > 1 then sprite_index= spr_LWalk 
	else if attacking !=0 then sprite_index = spr_LHit 
	else sprite_index = spr_L}
	
else if 250 > dir and dir > 210 { 
	if speed > 1 then sprite_index= spr_downLWalk 
	else if attacking !=0 then sprite_index = spr_downLHit 
	else sprite_index = spr_downL}

else if 290 > dir and dir >= 250 { 
	if speed > 1 then sprite_index= spr_downMWalk 
	else if attacking !=0 then sprite_index = spr_downMHit
	else sprite_index = spr_downM}

else if 330 > dir and dir >= 290 { 
	if speed > 1 then sprite_index= spr_downRWalk 
	else if attacking !=0 then sprite_index = spr_downRHit
	else sprite_index = spr_downR}

else if dir <= 30 or dir >= 330 { 
	if speed > 1 then sprite_index= spr_RWalk 
	else if attacking !=0 then sprite_index = spr_RHit
	else sprite_index = spr_R}


if obj_playerstatuses.alive = 0 then sprite_index = spr_dead
#endregion


#region windup = 0 and attacking
if windup = 0 and obj_playerstatuses.alive = 1 {
	if mouseaiming = 1 then { dir = point_direction(x,y,mouse_x,mouse_y)
		//direction = point_direction(x,y,mouse_x,mouse_y);
		}
				//		Light combos
	if isheavy=0 {
		//				Weapon 1, Curved sword moveset
	if weapontype=1 {
		if combo = 0 {instance_create_depth(-100,-100,1,obj_playerhitbox); combo = 1; combotime = 35; cooldown = 11}
		else if combo = 1 {instance_create_depth(-100,-100,1,obj_playerhitbox); combo = 2; combotime = 35; cooldown = 11}
		else if combo = 2 {instance_create_depth(-100,-100,1,obj_playerhitbox); combo = 3; combotime = 35; cooldown = 11}
		else if combo = 3 {instance_create_depth(-100,-100,1,obj_playerhitbox); combo = 0; combotime = 1; cooldown = 32}
		obj_playerhitbox.time=3
		obj_playerhitbox.sprite_index=spr_midhitbox
		}
		//				Weapon 2, Fist weapons moveset
	else if weapontype=2 {
		if combo = 0 {instance_create_depth(-100,-100,1,obj_playerhitbox); combo = 1; combotime = 35; cooldown = 9}
		else if combo = 1 {instance_create_depth(-100,-100,1,obj_playerhitbox); combo = 2; combotime = 35; cooldown = 9}
		else if combo = 2 {instance_create_depth(-100,-100,1,obj_playerhitbox); combo = 3; combotime = 35; cooldown = 9}
		else if combo = 3 {instance_create_depth(-100,-100,1,obj_playerhitbox); combo = 4; combotime = 35; cooldown = 9}
		else if combo = 4 {instance_create_depth(-100,-100,1,obj_playerhitbox); combo = 0; combotime = 1; cooldown = 28}
		obj_playerhitbox.time=3
		obj_playerhitbox.sprite_index=spr_smallhitbox
		}
		//				Weapon 3, dagger moveset
	else if weapontype=3 {
		if combo = 0 {instance_create_depth(-100,-100,1,obj_playerhitbox); combo = 1; combotime = 35; cooldown = 8}
		else if combo = 1 {instance_create_depth(-100,-100,1,obj_playerhitbox); combo = 2; combotime = 35; cooldown = 8}
		else if combo = 2 {instance_create_depth(-100,-100,1,obj_playerhitbox); combo = 0; combotime = 1; cooldown = 32}
		obj_playerhitbox.time=3
		obj_playerhitbox.sprite_index=spr_smallhitbox
		}
		//				Weapon 4, Rapier moveset
	else if weapontype=4 {
		if combo = 0 {instance_create_depth(-100,-100,1,obj_playerhitbox); combo = 1; combotime = 35; cooldown = 11}
		else if combo = 1 {instance_create_depth(-100,-100,1,obj_playerhitbox); combo = 2; combotime = 35; cooldown = 11}
		else if combo = 2 {instance_create_depth(-100,-100,1,obj_playerhitbox); combo = 3; combotime = 35; cooldown = 11}
		else if combo = 3 {instance_create_depth(-100,-100,1,obj_playerhitbox); combo = 0; combotime = 1; cooldown = 30}
		obj_playerhitbox.sprite_index=spr_smallthinhitbox
		obj_playerhitbox.time=5
		}
	//					Weapon 5, Hand Axe moveset
	else if weapontype=5 {
		if combo = 0 {instance_create_depth(-100,-100,1,obj_playerhitbox); combo = 1; combotime = 35; cooldown=12}
		else if combo = 1 {instance_create_depth(-100,-100,1,obj_playerhitbox); combo = 2; combotime = 35; cooldown=12}
		else if combo = 2 {instance_create_depth(-100,-100,1,obj_playerhitbox); combo = 0; cooldown = 45; combotime=1}
		obj_playerhitbox.time=8
		obj_playerhitbox.sprite_index=spr_midhitbox
		}
		//				Weapon 6, Shortsword moveset
	else if weapontype=6 {
		
		if combo = 0 {instance_create_depth(-100,-100,1,obj_playerhitbox); combo = 1; combotime = 35; cooldown=11}
		else if combo = 1 {instance_create_depth(-100,-100,1,obj_playerhitbox); combo = 2; combotime = 35; cooldown=11}
		else if combo = 2 {instance_create_depth(-100,-100,1,obj_playerhitbox); combo = 3; combotime = 35; cooldown=11}
		else if combo = 3 {instance_create_depth(-100,-100,1,obj_playerhitbox); cooldown = 40; combotime=10; obj_playerhitbox.sprite_index = spr_smallthinhitbox}	
		if combo = 3 {
			obj_playerhitbox.time =8
			obj_playerhitbox.sprite_index=spr_smallthinhitbox 
			}	else {	
			obj_playerhitbox.time =5
			obj_playerhitbox.sprite_index = spr_midhitbox 
			}
	}
		//				Weapon 7, Flail moveset
	else if weapontype=7 {
		if combo = 0 {instance_create_depth(-100,-100,1,obj_playerhitbox); combo = 1; combotime = 35; cooldown=14}
		else if combo = 1 {instance_create_depth(-100,-100,1,obj_playerhitbox); combo = 0; cooldown = 25; combotime=1}
		obj_playerhitbox.time=6
		obj_playerhitbox.sprite_index=spr_midhitbox
	}
	//					Weapon 8, big hammer and stuff like it
	else if weapontype=8 {
		if combo = 0 {instance_create_depth(-100,-100,1,obj_playerhitbox); combo = 1; combotime = 35; cooldown=16}
		else if combo = 1 {instance_create_depth(-100,-100,1,obj_playerhitbox); combo = 2; combotime = 35; cooldown=16}
		else if combo = 2 {instance_create_depth(-100,-100,1,obj_playerhitbox); combo = 0; cooldown = 30; combotime=1}
		obj_playerhitbox.time=10
		obj_playerhitbox.sprite_index=spr_midhitbox
	}
	//					Weapon 9, Warpick
	else if weapontype=9 {
		
		if combo = 0 {instance_create_depth(-100,-100,1,obj_playerhitbox); combo = 1; combotime = 35; cooldown=10}
		else if combo = 1 {instance_create_depth(-100,-100,1,obj_playerhitbox); combo = 2; combotime = 35; cooldown=10}
		else if combo = 2 {instance_create_depth(-100,-100,1,obj_playerhitbox); combo = 3; combotime = 35; cooldown=10}
		else if combo = 3 {instance_create_depth(-100,-100,1,obj_playerhitbox); combo = 4; cooldown = 40; combotime=10}	
		obj_playerhitbox.time=5
		obj_playerhitbox.sprite_index=spr_smallhitbox
	}
	//					Weapon 10, spear
	else if weapontype=10 {
		
		if combo = 0 {instance_create_depth(-100,-100,1,obj_playerhitbox); combo = 1; combotime = 35; cooldown=10}
		else if combo = 1 {instance_create_depth(-100,-100,1,obj_playerhitbox); combo = 2; combotime = 35; cooldown=10}
		else if combo = 2 {instance_create_depth(-100,-100,1,obj_playerhitbox); combo = 3; combotime = 35; cooldown=10}
		else if combo = 3 {instance_create_depth(-100,-100,1,obj_playerhitbox); combo = 4; cooldown = 40; combotime=10}	
		obj_playerhitbox.time=5
		obj_playerhitbox.sprite_index=spr_midlonghitbox
		obj_playerhitbox.speed=90

	}
	
	//					Weapon 11, lance
	else if weapontype=11 {
		
		if combo = 0 {instance_create_depth(-100,-100,1,obj_playerhitbox); combo = 1; combotime = 35; cooldown=24}
		else if combo = 1 {instance_create_depth(-100,-100,1,obj_playerhitbox); combo = 2; combotime = 35; cooldown=24}
		else if combo = 2 {instance_create_depth(-100,-100,1,obj_playerhitbox); combo = 3; cooldown = 45; combotime=10}	
		obj_playerhitbox.time=11
		obj_playerhitbox.sprite_index=spr_midlonghitbox
		obj_playerhitbox.speed=100
	}
	
	
	
}
}
#endregion

if(combotime != 0){combotime = combotime - 1}else{combo = 0}
if cooldown < 0 then cooldown = 0
if cooldown !=0 then cooldown = cooldown -1


if attacking = 1 { timesinceattack = timesinceattack +1 } 
else timesinceattack = 0

//Stay within enemy range


// collision
#region collision
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
#endregion
//if !place_meeting(x+hspeed,y+vspeed,Parent_WalkingTriggerGrouping){
//	global.Rm1posX = obj_player.x
//	global.Rm1posY = obj_player.y
//}
if place_meeting(x+hspeed,y+vspeed,obj_walkingTriggerToTestRoom2) {
	global.Rm1posX = x
	global.Rm1posY = y
	
	room=Rm_Test2
}

