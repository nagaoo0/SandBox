var kUp, kDown, kLeft, kRight, kSelect, kBack, mLeft, mRight;

kUp = keyboard_check(vk_up);
kDown = keyboard_check(vk_down);
kLeft = keyboard_check(vk_left);
kRight = keyboard_check(vk_right);
kSelect = keyboard_check_pressed(ord("X"));
kBack = keyboard_check_pressed(ord("Z"));
mLeft = mouse_check_button(mb_left);
mRight = mouse_check_button(mb_right);


if !global.chestOpen && o_cursor.selected == id{
var drop = instance_nearest(x,y,obj_drop);

    
    if mLeft open=true;   
if instance_exists(drop) && point_distance(x,y,drop.x,drop.y)<=32 
{           
     with (drop){
       o_chest.add_id = ID;
       vx = other.x-x
       vy = other.y-y
     instance_destroy();
     }
}

    
}   
else if kDown or kUp or kLeft or kRight{
open = false;
global.chestOpen=false;
}

if open{
a= smooth_approach(a,1,0.2)
} else
{
a= smooth_approach(a,0,0.2)
}


