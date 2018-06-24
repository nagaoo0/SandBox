// enumeration of different item types. never change their order, only add at the end!


  // construct maps  
  var recipe = ds_map_create();
  var map_ingredients = ds_map_create();
  var map_result = ds_map_create();
 
  // populate ingredients map
  ds_map_add(map_ingredients, ITEMTYPE.wood, 3)
  ds_map_add(map_ingredients, ITEMTYPE.labor, 5)
  ds_map_add(map_ingredients, ITEMTYPE.iron, 1)
 
  // populate results map
  ds_map_add(map_result, global.key_object, obj_item_bow);
  ds_map_add(map_result, global.key_strength, 12);
  ds_map_add(map_result, global.key_value, 500);
  // etc...
 
  // create the final map of the recipe
  ds_map_add(recipe, global.key_name, "Bow");
  ds_map_add(recipe, global.key_desc, "A simple wooden bow");
  ds_map_add_map(recipe, global.key_ingredients, map_ingredients);
  ds_map_add_map(recipe, global.key_result, map_result);
 
  // encode as json and store in clipboard
  var json = json_encode(recipe);
  clipboard_set_text(json);