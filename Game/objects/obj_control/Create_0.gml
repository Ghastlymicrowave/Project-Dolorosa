chat = 0
tick = 0
faderate = 0.05
// increase faderate to increase speed of fade from black, 1 is instant, has to end up at 1 to look smooth

step = -1
convo = 0
viewschecked = 0

tick2 = 0

startwview =camera_get_view_width(view_camera[0]) 
starthview =camera_get_view_height(view_camera[0]) 
arechoicescreated=false
selected = false
choice = -1

canadvancewithE = true

ID1=0
ID2=0


leftSpriteVOffset = .55555
leftSpriteHOffset = .15625

rightSpriteVOffset = .41666
rightSpriteHOffset = .84375

leftSprite = spr_testTextSprite
rightSprite = spr_testTextSprite1
nameplate = spr_nameplate_yeetman

inv = global.inventory 
inventory = 0
invCreated = 0
numOfItems = 0