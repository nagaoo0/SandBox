//Now you can draw Inventory here:
display_set_gui_size(1280/2,720/2);
draw_set_alpha(a)
draw_set_color(c_black)
switch inv{
    case inv.open :
         a = smooth_approach(a,1,0.2)
         if keyboard_check_released(ord("I")) { 
            inv=inv.closed;   

         }
    break;
    case inv.closed :
         a = smooth_approach(a,0,0.2)
         if keyboard_check_released(ord("I")){
            inv=inv.open;   

         }
    break;
}
draw_set_alpha(a-0.5)
draw_rectangle(0,0,display_get_gui_width(),display_get_gui_height(),false)
draw_set_alpha(a)
draw_set_color(c_white)
draw_text(20,20,string_hash_to_newline("Play Time : "+string(round(playertime))))
draw_text(20,40,string_hash_to_newline("Pos : "+string(currentChunk_x)+":"+string(currentChunk_y)))
draw_text(20,60,string_hash_to_newline(string(fps)+"              "+string(fps_real)))
draw_set_color(c_black)

//
inventory_draw(display_get_gui_width()/2+48+42,display_get_gui_height()/10,spr_slot, s_slotInfo,10,c_white);

draw_set_alpha(1-a)

draw_hotbar(display_get_gui_width()-32,4);

draw_set_alpha(1)

var id_last = inventory_read("ID",inventory_last_select());





