x=mouse_x
y=mouse_y

var cx = o_player.cx
var cy = o_player.cy
                                                                        
if o_inventory.inv==inv.closed{


nearestTree= instance_nearest(x,y,o_tree)
if nearestTree != noone{
   if point_distance(mouse_x,mouse_y,nearestTree.x+8,nearestTree.y+8)<=16 &&
        instance_exists(nearestTree)
      selected = nearestTree;
   else selected = noone;
}


nearestChest= instance_nearest(x,y,o_chest)
if nearestChest != noone{
   if point_distance(mouse_x,mouse_y,nearestChest.x+8,nearestChest.y+8)<=16
      selected = nearestChest;
   else selected = noone;
}

}
//show_debug_message(string(selected))


