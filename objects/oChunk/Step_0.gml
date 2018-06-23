


if point_in_rectangle(o_player.x,o_player.y,x,y,x+chunkSize,y+chunkSize){
    active=true; 
    Chunk=id
    currentChunk_x=(x/256)
    currentChunk_y=(y/256)

    //print(currentChunk_x," ",currentChunk_y)
} else active=false;


var xx= x/256, yy = y/256;
if 
    currentChunk_x == xx   && currentChunk_y == yy-1 or
    currentChunk_x == xx-1 && currentChunk_y == yy   or
    currentChunk_x == xx+1 && currentChunk_y == yy   or
    currentChunk_x == xx   && currentChunk_y == yy+1
{
    if !hasAcces && playertime>price && !hasProposed {
        proposeChunk();
        hasProposed = true;
    } 
}

    if playertime<price && !hasAcces{
        if point_in_rectangle(o_player.x+o_player.vx*2,o_player.y,x,y,x+chunkSize,y+chunkSize){
            o_player.vx = 0           
        }
        if point_in_rectangle(o_player.x,o_player.y+o_player.vy*2,x,y,x+chunkSize,y+chunkSize){

            o_player.vy = 0            
        }
    }


if hasProposed && !hasAcces && playertime>price{
    if point_in_rectangle(o_player.x,o_player.y,x,y,x+chunkSize,y+chunkSize){
       hasAcces = true;
       playertime-=price;
    }
}



//check for despawn
if(pointInDespawnRange(x+chunkSize/2,y+chunkSize/2)){
    instance_destroy();
}


if !l && pointInSpawnRange(x,y){

	var j= blockIndex div 16, i = blockIndex-j*16;
				
	
	for (var b = 0; b<4; b++){
		var jj= (blockIndex+b) div 16, ii = (blockIndex+b)-jj*16;
				
		if chunk[# ii,jj] == 2 && !place_meeting(x+ii*16,y+jj*16,o_ground) instance_create_depth(x+ii*16,y+jj*16,0,o_ground)
		if chunk[# ii,jj] == 1 && !place_meeting(x+ii*16,y+jj*16,o_stone) instance_create_depth(x+ii*16,y+jj*16,0,o_stone)	
	}
        
	blockIndex +=4;



	if blockIndex==16*16 l = true;
}



