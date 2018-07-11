if keyboard_check_pressed(vk_add) then row = row+1
if row = 2 then row = 0

if row = 0 {
	if keyboard_check(vk_numpad1) then obj_player.weapontype = 1
	if keyboard_check(vk_numpad2) then obj_player.weapontype = 2
	if keyboard_check(vk_numpad3) then obj_player.weapontype = 3
	if keyboard_check(vk_numpad4) then obj_player.weapontype = 4
	if keyboard_check(vk_numpad5) then obj_player.weapontype = 5
	if keyboard_check(vk_numpad6) then obj_player.weapontype = 6
	if keyboard_check(vk_numpad7) then obj_player.weapontype = 7
	if keyboard_check(vk_numpad8) then obj_player.weapontype = 8
	if keyboard_check(vk_numpad9) then obj_player.weapontype = 9
}
else if row =1 {
	if keyboard_check(vk_numpad0) then obj_player.weapontype = 10
	if keyboard_check(vk_numpad1) then obj_player.weapontype = 11
}

if keyboard_check_pressed(ord("R")) then room_restart()
