instance_deactivate_all(true)

with(oChunk){
    unloadChunk();
    ds_map_destroy(blockData)
}

ds_map_destroy(chunkMap);
ds_map_destroy(chunkLoadedSet);



