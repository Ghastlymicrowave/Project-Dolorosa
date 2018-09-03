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