/// @description Insert description here
// You can write your code in this editor
if(round(knockback)!=0){

	knockback/=1.1
	
}

repeat(3){
	
if(!place_meeting(x+hspeed,y+vspeed,obj_obstacle)){xx = x
	
	yy = y
	
	}else{
	
	cx = x 
	cy = y
	knockback = knockback*0
	kndir = point_direction(cx,cy,x,y)
	
	}
	

motion_set(kndir,round(knockback)/4)

}

if(tick>0){tick --}
if(tick2>0){tick2 --}else{tick2=10}
x= round(x)
y= round(y)

//stopping paths

if(distance_to_object(obj_player)<50){
	path_end()	
	
	

}

if(distance_to_object(obj_player)<100){
	// this is where an attack would go
	if warmup = -1 then warmup = 15


} else warmup = -1

if obj_control.chat != 1 {
if cooldown != 0 then cooldown = cooldown -1
if warmup != -1 then warmup = warmup -1
}


if warmup = 0 and cooldown = 0{
	
hitboxid= instance_create_depth(-100,-100,0,obj_enemyhitbox)
hitboxid.target = id
hitboxid.image_index = spr_midhitbox
hitboxid.damage=10
hitboxid.dir = point_direction(x,y,obj_player.x,obj_player.y)

cooldown = 30

}

//dodgingd

/*
if(obj_player.windup>0&&distance_to_object(obj_player)<200){path_end();
>>>>>>> 6d94e9a8e5c5988f945be497c45df5f36076d687
	
	tick3 = tick3max
	tick4 = 6

}

if(tick4 > 0&&distance_to_object(obj_player)<200&&tick3<=0){

tick4--
motion_set(point_direction(obj_player.x,obj_player.y,x,y),tick4*10)

}else{tick3--}
*/
//basic pathfinding

mp_grid_add_instances(global.grid, obj_enobstacle, true);

if(distance_to_object(obj_player)>50&&tick<=0&&tick2<=0){
  if(mp_grid_path(global.grid, path, x, y, obj_player.x, obj_player.y, 1))
     {
     path_start(path, 3, path_action_stop, 0);
     }
}

//stay in room
if(x<0){x=0}
if(y<0){y=0}
if(x>room_width){x=room_width}
if(y>room_height){y=room_height}

if obj_control.chat = 1 then speed = 0