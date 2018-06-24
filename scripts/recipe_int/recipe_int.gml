global.recipe_id = ds_map_create();
  // construct maps  
  var input = ds_map_create();

//DEMO
recipe_add(20,1,0)			//Wood, can be crafted, in inventory (minimum level of workbech, 0 = inventory)
recipe_add(20,2,1)			//Wood, Number of ingeredients, 1
	recipe_input_add(19,1)	//adding the ingredients => Raw wood, Amount = 1
recipe_add(20,3,input)		//Add all previous ingredients to the recepie
	ds_map_clear(input)		//clear ingredients for next recepie
recipe_add(20,4,2)			//Wood, Amount of resaulting items, Amount = 2 

