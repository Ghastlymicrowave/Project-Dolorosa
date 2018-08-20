if place_meeting(x,y,obj_interactableParent){ 
	
	
	
	if place_meeting(x,y,obj_interactableParent){
	if keyboard_check_pressed(ord("E")) {
		if obj_control.convo = 0 and obj_control.step = 0{
			if place_meeting(x,y,Parent_TextGrouping){
				#region Text objects
//	if you wanted to change the convo per readthrough then you could store the variable on the object and increment that each readthrough end
				if place_meeting(x,y,obj_interactable_test) then StartConvo(4,1)
			    else if place_meeting(x,y,obj_interactable_test2) then StartConvo(5,1)
			    else if place_meeting(x,y,obj_interactable_test3) then StartConvo(6,1)
				else if place_meeting(x,y,obj_text_townsperson1) then StartConvo(7,1)
				else if place_meeting(x,y,obj_text_townsperson2) then StartConvo(8,1)
				else if place_meeting(x,y,obj_text_townsperson3) then StartConvo(9,1)
				#endregion
			}
			else if place_meeting(x,y,Parent_DoorGrouping){
				#region Door objects
				if place_meeting(x,y,obj_DoorToTestRoom3) { global.Rm1posX = obj_player.x;global.Rm1posY = obj_player.y;room= Rm_Test3}
				else if place_meeting(x,y,obj_DoorToTestRoom1) {room= Rm_Test1}
				#endregion
			}
	}
	}
	}
}
else if instance_exists(obj_indicator) then obj_indicator.boom=1





