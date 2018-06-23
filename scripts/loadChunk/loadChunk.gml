

chunk = ds_grid_create(chunkSize, chunkSize);


if(chunkExists(x,y)){
    var str = ds_map_find_value(chunkMap,getKey(x,y));
    ds_grid_read(chunk,str);


    time= ds_map_find_value(blockData,"Time"+getKey(x,y))
    
    hasAcces= ds_map_find_value(blockData,"Acess"+getKey(x,y))
    hasProposed = ds_map_find_value(blockData,"Proposed"+getKey(x,y))
	if !hasAcces price= ds_map_find_value(blockData,"Price"+getKey(x,y))
	else price=0;
    trees = ds_map_find_value(blockData,"Trees"+getKey(x,y))
	
	


}else{                                       
    generate();    
}

ds_map_add(chunkLoadedSet,getKey(x,y),1);

debug_event("Chunk Loaded"+getKey(x,y))