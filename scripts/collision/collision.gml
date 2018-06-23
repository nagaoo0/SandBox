/// @description  collision()

// Horizontal Collisions
repeat(abs(vx)) {
if(!place_meeting(x+sign(vx),y,p_solid)) {
	if (Chunk.chunk[# (((x+sign(vx)*8)-Chunk.x)div 16),((y-Chunk.y)div 16)]!=0) or (x-Chunk.x)>16*15
	{
		x += sign(vx);
	}
}
else {
    vx = 0;
    }
   } 
// Vertical Collisions
repeat(abs(vy)) {
if(!place_meeting(x,y+sign(vy),p_solid)) {
	if (Chunk.chunk[# ((x-Chunk.x)div 16),(((y+sign(vy)*8)-Chunk.y)div 16)]!=0) or (y-Chunk.y)>16*15
	{
		y += sign(vy);
	}
}
else {
    vy = 0;
    }
    }
