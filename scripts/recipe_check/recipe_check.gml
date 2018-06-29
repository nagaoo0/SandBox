//var rN = ds_map_size(global.recipe_id)/5;

var ID = argument0, canMake = 0;

	var iN= ds_map_find_value(global.recipe_id,"r["+string(ID)+",2]")
	var localRecipe =ds_map_create(), strRecipe = ds_map_find_value(global.recipe_id,"r["+string(ID)+",3]")
	
	ds_map_read(localRecipe,strRecipe)
	
	for(i=0 ; i<iN ; i++){
		var ingredient = ds_map_find_value(localRecipe,"ID"+string(i))
		var ingredientAmount = ds_map_find_value(localRecipe,"Amount"+string(i))
		print(ingredient)
			for (j=0; j<(global.InventorySlot*global.InventorySlotH); j+=1)
			{
				if ds_map_find_value(global.inventory,"ID"+string(j)) == ingredient{
					if i==iN-1 canMake=1;
				}
			}	
	}
	
return canMake;


