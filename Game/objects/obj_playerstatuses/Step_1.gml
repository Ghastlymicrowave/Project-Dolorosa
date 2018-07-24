if hp <= 0 { hp = 0; alive = 0}

if invulTime > 0 then invulTime = invulTime -1
else { invulTime = 0; isHit=0}

if keyboard_check(ord("G")) then DamagePlayer(10)