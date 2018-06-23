/// @description  Initialize Entites(Moveable)
/// @param Moveable

vx = 0;
vy = 0;

// Before Battle Positions
bBx = 0;
bBy = 0;
bBface = 0;

// Initial Stats
curLevel = 1;   
curExp = 0;
maxExp = (curLevel * 25);
maxHealth = (5+curLevel);
curHealth = maxHealth;
dmg = 5;
def = 1;
defWhileDefending = def*2;
maxAP = 10;
curAP = 0;
attackRate = .01;

// Collisions
cLeft = place_meeting(x-1,y,p_solid) || place_meeting(x-1,y,p_entity);
cRight = place_meeting(x+1,y,p_solid)|| place_meeting(x+1,y,p_entity);
cUp = place_meeting(x,y-1,p_solid) || place_meeting(x,y-1,p_entity);
cDown = place_meeting(x,y+1,p_solid) || place_meeting(x,y+1,p_entity);

ID = 0
sprite = item_id_read(ID,2) //spr_ItemIcon_Leaf
sprite_index = item_id_read(ID,2)
image_speed = 0.025

r = random(400)


time = 60

