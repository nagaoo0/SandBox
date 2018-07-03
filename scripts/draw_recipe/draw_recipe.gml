/// @description draw_recipe( ID)
/// @param ID

var ID = argument0;
var _y = argument1;
var _x = 20;

var ResAmount = ds_map_find_value(global.recipe_id,"r["+string(ID)+",4]")
var ResIcon= item_id_read(ID,2)

draw_set_alpha(a)

draw_sprite_ext(ResIcon,0,_x,_y,2,2,0,c_white,a)
	draw_text(_x+28,_y+20,string(ResAmount))


