ds_map_delete(chunkLoadedSet,getKey(x,y));

ds_map_replace(chunkMap,getKey(x,y),
    ds_grid_write(chunk)
);
//time saving
//ds_map_add(blockData,"Time"+getKey(x,y),time)
ds_map_replace(blockData,"Time"+getKey(x,y),time)
//set price per chunk
//ds_map_add(blockData,"Price"+getKey(x,y),price)
ds_map_replace(blockData,"Price"+getKey(x,y),price)
//setAccess
//ds_map_add(blockData,"Acess"+getKey(x,y),hasAcces)
ds_map_replace(blockData,"Acess"+getKey(x,y),hasAcces)
//setprop
//ds_map_add(blockData,"Proposed"+getKey(x,y),hasProposed)
ds_map_replace(blockData,"Proposed"+getKey(x,y),hasProposed)
//trees
//ds_map_add(blockData,"Trees"+getKey(x,y),trees)
ds_map_replace(blockData,"Trees"+getKey(x,y),trees)





////Go trough every block in chunk
//for(var i = 0; i < chunkSize / blockSize; i++){
//    for(var j = 0; j < chunkSize / blockSize; j++){
//        //save blocks on surface level
//    }
//}
//    //save only if world is saved
    //ds_map_secure_save(blockData,"blockData"+getKey(x,y))



ds_grid_destroy(chunk);

for(var i = 0; i < chunkSize / blockSize; i++){
    for(var j = 0; j < chunkSize / blockSize; j++){

		//var groundBlock = instance_position(x+i*16,y+j*16,p_floor);
		//if instance_exists(groundBlock){
		//	instance_destroy(groundBlock);
		//}
		
		if place_meeting(x+i*16,y+j*16,p_floor)  with (instance_position(cx,cy,p_solid)){ instance_destroy();}
				
				
				if place_meeting(x+i*16,y+j*16,p_floor)  with (instance_position(cx,cy,p_solid)){ instance_destroy();} 


		var bush = instance_place(x+i*16,y+j*16,o_bush);
		if instance_exists(bush) instance_deactivate_object(bush)
        
    }
}


instance_deactivate_region(x,y,chunkSize,chunkSize,true,true)
instance_activate_object(oChunk)
instance_activate_object(oGenerator)
instance_activate_object(o_cursor)

debug_event("Chunk unloaded"+getKey(x,y))