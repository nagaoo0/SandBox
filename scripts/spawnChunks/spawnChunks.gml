var px = o_player.x;
var py = o_player.y;

px -= px % chunkSize;
py -= py % chunkSize;

var chunkRadius = chunkSize * ceil(spawnRadius/chunkSize);

for(var i = px - chunkRadius; i <= px + chunkRadius; i+= chunkSize){
    for(var j = py - chunkRadius; j <= py + chunkRadius; j+= chunkSize){
      if(!chunkLoaded(i,j) && pointInSpawnRange(i+chunkSize/2,j+chunkSize/2)){
        instance_create(i,j,oChunk);
      }
    }
}

