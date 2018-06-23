/// @description  Collisions

cLeft = place_meeting(x-1,y,p_solid) || place_meeting(x-1,y,p_entity);
cRight = place_meeting(x+1,y,p_solid)|| place_meeting(x+1,y,p_entity);
cUp = place_meeting(x,y-1,p_solid) || place_meeting(x,y-1,p_entity);
cDown = place_meeting(x,y+1,p_solid) || place_meeting(x,y+1,p_entity);

