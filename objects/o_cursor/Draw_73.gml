if o_inventory.inv==inv.closed{
draw_self();


if selected != noone && instance_exists(selected){
var yy;
yy = sin((current_time)/200)*2
draw_panel(s_cursor,0,selected.x-yy/2,selected.y-yy/2,selected.w+yy,selected.h+yy,7)

} else selected = noone;

}

