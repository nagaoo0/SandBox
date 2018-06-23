if keyboard_check(ord("P")) {
with(oChunk){
   // ds_map_destroy(blockData)

    unloadChunk();
    
}

ds_map_destroy(chunkMap);
ds_map_destroy(chunkLoadedSet);

game_restart();
}

if keyboard_check(vk_escape){
    game_end();
}


