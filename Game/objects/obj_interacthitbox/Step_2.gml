if place_meeting(x,y,obj_interactableParent){ 
	
	
	
	if place_meeting(x,y,obj_interactableParent){
	if keyboard_check_pressed(ord("E")) {
		if obj_control.convo = 0 and obj_control.step = 0{
			if place_meeting(x,y,obj_interactable_test) then StartConvo(obj_interactable_test.convo,1)
	   else if place_meeting(x,y,obj_interactable_test2) then StartConvo(obj_interactable_test2.convo,1)
	   else if place_meeting(x,y,obj_interactable_test3) then StartConvo(obj_interactable_test3.convo,1)
	   else if place_meeting(x,y,obj_DoorToTestRoom3) { global.Rm1posX = obj_player.x;global.Rm1posY = obj_player.y;room= Rm_Test3}
	   else if place_meeting(x,y,obj_DoorToTestRoom1) {room= Rm_Test1}
	}
	}
	}
}
else if instance_exists(obj_indicator) then obj_indicator.boom=1





