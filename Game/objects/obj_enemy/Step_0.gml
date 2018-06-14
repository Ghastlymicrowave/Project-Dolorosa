/// @description Insert description here
// You can write your code in this editor
if(round(knockback)!=0){

	knockback/=1.1
	
}
repeat(4){
	
if(!place_meeting(x,y,obj_obstacle)){xx = x
	
	yy = y
	
	}else{
		
	cx = x 
	cy = y
	knockback = knockback*-0.5
	x = xx
	y = yy
	kndir = point_direction(cx,cy,x,y)
	
	}
	

motion_set(kndir,round(knockback)/4)

}

if(tick>0){tick --}

x= round(x)
y= round(y)
