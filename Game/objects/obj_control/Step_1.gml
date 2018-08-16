if step = -1 then step = 0


if obj_drawtext.textcomplete = 1 and keyboard_check_pressed(ord("E")) and chat = 1 and canadvancewithE = true{
	AdvanceStep()
} else if obj_drawtext.textcomplete = 0 and keyboard_check_pressed(ord("E")) and chat = 1 and canadvancewithE = true{
obj_drawtext.drawtext = obj_drawtext.text	
obj_drawtext.text= ""
}


if chat = 1{
	if convo = 4{
		if step = 1{
			DrawSumText("HAAH",2,1)
		}
		else if step = 2{
			DrawSumText("BUST NUT",2,1)
		}
		else if step = 3{
			EndConvo()
			StopDrawingText()
		}
	}else if convo = 5{
		if step = 1{
			DrawSumText("YA YEET",2,1)
		}
		else if step = 2{
			DrawSumText("MY MEAT",2,1)
		}
		else if step = 3{
			EndConvo()
			StopDrawingText()
		}
	}else if convo = 6{
		if step =1{
			DrawSumText("JOHNNY JOHNNY, EATING SUGAR ARE YOU??? HMMMMMMMMMMMM.....",2,1)
		} 
		else if step = 3{
			instance_destroy(ID1)
			instance_destroy(ID2)
			ID1=0
			ID2=0
			canadvancewithE=true
			arechoicescreated=false
			if choice = 1 then DrawSumText("YOU LITTLE BITCH, I TOLD YOU NOT TO! BACK TO THE DUNGEON WITH YOU!",2,1)
		    else DrawSumText("GOOD, GOOD, DO NOT EAT THE SUGAR.",2,1)
			
			
		//	if choice = 1 then DrawSumText("YOU LITTLE BITCH I TOLD YOU NOT TO",2,1)
		//	else DrawSumText("YOU GOOD FAM",2,1)
			
		} 
		else if step = 2{
			canadvancewithE = false
			DrawSumText("",2,1)
			if arechoicescreated=false {
				arechoicescreated=true
				ID1 = instance_create_depth(0,0,-100,obj_option) 
				ID1.value=1
				ID1.sprite_index = spr_option_Yes
				ID2 = instance_create_depth(0,0,-100,obj_option) 
				ID2.value=2
				ID2.sprite_index = spr_option_No
				}
				
				
		}
		else if step = 4{
			choice=0
			EndConvo()
			StopDrawingText()
		}
		}
		
	}
		
	//}else if convo = 3{
	//	if step = 1{
	//		DrawSumText("STOP TALKING TO ME NOW",2,1)
	//	}
	//	else if step = 2{
	//		DrawSumText("ITS GETTING ANNOYING",2,1)
	//	}
	//	else if step = 3{
	//		EndConvo()
	//		StopDrawingText()
	//	}
