time = time -1
if time = 0 { obj_player.attacking=0;instance_destroy() }

if obj_playerstatuses.alive = 0 then instance_destroy()  