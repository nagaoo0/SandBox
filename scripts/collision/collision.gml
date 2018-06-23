/// @description  collision()

// Horizontal Collisions
repeat(abs(vx)) {
if(!place_meeting(x+sign(vx),y,p_solid))  //&& place_meeting(x+sign(vx)*8,y,p_floor)
{
    x += sign(vx);
}
else {
    vx = 0;
    }
   } 
// Vertical Collisions
repeat(abs(vy)) {
if(!place_meeting(x,y+sign(vy),p_solid)) //&& (place_meeting(x,y+sign(vy)*4,p_floor)) 
{
    y += sign(vy);
}
else {
    vy = 0;
    }
    }
