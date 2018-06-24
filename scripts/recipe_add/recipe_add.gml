/// @description  item_add(ID,ID-Info,value)
/// @param ID
/// @param ID-Info
/// @param value
if !ds_map_exists(global.recipe_id,"item["+string(argument0)+","+string(argument1)+"]"){
   ds_map_add(global.recipe_id,"item["+string(argument0)+","+string(argument1)+"]",argument2)
}else{
   show_message("THERE ARE ALREADY RECIPE, AT: " + "#item["+string(argument0)+","+string(argument1)+"]")
}
