
//dis += (keyboard_check(vk_right)-keyboard_check(vk_left));
//tick2 ++
//if tick2 = 5 then {tick ++;tick2=0}
tick++
//if tick = 101 then tick = 0
if tick > (10* pi) then tick = 0

if keyboard_check(ord("O")) then dis = (10*sin(.1*tick))
else dis = 0
