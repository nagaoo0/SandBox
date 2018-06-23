/// @description  inventory_draw(x,y)
/// @param x
/// @param y
var _x, _y, slot_width, spritebox, sprite_infobox,slot_gap,pre_col;
_x = argument0;
_y = argument1;
spritebox = s_cursor//spr_slot;
sprite_infobox = spr_slot;
slot_gap = 10;
pre_col = draw_get_color();
draw_set_color(c_white);
var yy = sin((current_time)/200)*2


draw_set_font(f_menu);

var slot_height;
slot_width = slot
slot_height = slot_h//slot/slot_width
var j, index;
j = 0
index = 0
var item_id_va;
item_id_va = -1
var sprite;
sprite = spr_ItemIcon_Default
var spr_width, spr_height;
spr_width = sprite_get_width(spritebox)
spr_height = sprite_get_height(spritebox)

if a<=0.9 {

if mouse_wheel_up() && global.ItemLastSelect!=0 global.ItemLastSelect--
if mouse_wheel_down() && global.ItemLastSelect!=(display_get_gui_height()div(spr_height+slot_gap)) global.ItemLastSelect++

for (i=0; i<(display_get_gui_height()div(spr_height+slot_gap)); i+=1)
{

        if global.ItemLastSelect = index{
            //draw_sprite(spritebox,2,_x,_y+((spr_height+slot_gap)*i))
            draw_panel(s_cursor,0,_x-yy/2,_y+((spr_height+slot_gap)*i)-yy/2,16+yy,16+yy,7)
        }else{
        if index = global.ItemSelected{
            //draw_sprite(spritebox,1,_x+((spr_width+slot_gap)*j),_y+((spr_height+slot_gap)*i))   
        }else{
            //draw_sprite(spritebox,0,_x,_y+((spr_height+slot_gap)*i))
        }
        }
        index += 1
   
}
index = 0
}

for (i=0; i<slot_height; i+=1)
{

           
        //
        if ds_map_find_value(global.inventory,"slot"+string(index)) = true{
           item_id_va = ds_map_find_value(global.inventory,"ID"+string(index))
           sprite = ds_map_find_value(global.item_id,"item["+string(item_id_va)+",2]")
           var item_width, item_height;
           item_width = sprite_get_width(sprite)
           item_height = sprite_get_height(sprite)
           
           
              draw_sprite(sprite,image_index,_x+((spr_width+slot_gap)*j)+(spr_width/2)-(item_width/2),_y+((spr_height+slot_gap)*i)+(spr_height/2)-(item_height/2))
              draw_text_transformed(_x+((spr_width+slot_gap)*j)+((spr_height+slot_gap)/2),_y+((spr_height+slot_gap)*i),string_hash_to_newline(string(ds_map_find_value(global.inventory,"Stack"+string(index)))),0.5,0.5,0)

        }
        index += 1
    };  


