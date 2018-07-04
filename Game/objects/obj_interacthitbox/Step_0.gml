x=obj_player.x + obj_player.hspeed
y=obj_player.y + obj_player.vspeed

image_angle = obj_player.dir

direction = obj_player.dir




if place_meeting(x,y,obj_interactableParent){ 
	
	if indicatorexists = 0 {
		instance_create_depth(x,y+30,-5,obj_indicator)
		indicatorexists=1
	}
}
else if instance_exists(obj_indicator) then obj_indicator.boom=1




























//if obj_control.chat = 1{
//if convo = 1{
	
	
//		if step = 1 {
//				DrawSumText("FFFEAFEAFEFAEFEFS",2,1)
//				if not instance_exists(obj_textclicker) {
//					if obj_drawtext.textcomplete = 1 then instance_create_depth(x,y, -100, obj_textclicker)
//				}
//		}
		
//		else if step = 2 {
//				DrawSumText("SECOND LINE OF TEXT FUNNY JOKE AHAHAAHHAH CARS GO FAST VROOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOM HAAHSSSAFFDJSKFJKLASFLKJSDAFJLKASLJKESFL;JKAEFEFEA",2,1)
				
//				if !instance_exists(obj_textclicker){
//					if obj_drawtext.textcomplete = 1 then instance_create_depth(x,y, -100, obj_textclicker)
//				}
//		}

//		else if step = 3 {
//				step = 0
//				obj_control.chat = 0
//				DrawSumText("",2,1)
//		}
//		if not instance_exists(obj_textclicker) {
//	if obj_drawtext.textcomplete = 1 then instance_create_depth(x,y, -100, obj_textclicker)
//	}
//}
//}