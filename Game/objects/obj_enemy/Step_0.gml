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
if(tick2>0){tick2 --}else{tick2=30}
x= round(x)
y= round(y)




//basic pathfinding

mp_grid_add_instances(global.grid, obj_enobstacle, true);

if(distance_to_object(obj_player)<=5000&&tick<=0&&tick2<=0){

  if(mp_grid_path(global.grid, path, x, y, obj_player.x, obj_player.y, 1))
     {
     path_start(path, 3, 3, 0);
     }
}

//stay in room
if(x<0){x=0}
if(y<0){y=0}
if(x>room_width){x=room_width}
if(y>room_height){y=room_height}