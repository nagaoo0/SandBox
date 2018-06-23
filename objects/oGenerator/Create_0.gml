globalvar blockSize, chunkSize, despawnRadius, spawnRadius,
    chunkLoadedSet, chunkMap, playertime, blockData, gen,
     currentChunk_x, currentChunk_y;


randomize();
seed = round(random_range(1000000,10000000));

blockSize = 16;

chunkSize = 16*16;

despawnRadius = 640;

spawnRadius = 540;

playertime = 0;

chunkLoadedSet = ds_map_create();

chunkMap = ds_map_create();

blockData = ds_map_create();

gen = false;



global.isGenerating=false;


    currentChunk_x=(x/256)
    currentChunk_y=(y/256)



