if obj_playerstatuses.isHit=0 {
	obj_playerstatuses.isHit=1
	obj_playerstatuses.invulTime = obj_playerstatuses.invulTimeMax
	obj_playerstatuses.hp = obj_playerstatuses.hp - argument[0]
}