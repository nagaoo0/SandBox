var rN = ds_map_size(global.recipe_id)/5,	inString = ds_map_create ;


for (var i = 0; i<rN; i++){

	var 
	lvl= recipe_id_read(i,1),
	iN = recipe_id_read(i,2),

	
	rAmount = recipe_id_read(i,4),
	ID = recipe_id_read(i,5);
	inString = ds_map_read(inString, recipe_id_read(i,3))
	
	for (var j = 0; j<ds_map_size(inString); j++){
		var v = ds_map_find_first(inString);
	
	}
		

}