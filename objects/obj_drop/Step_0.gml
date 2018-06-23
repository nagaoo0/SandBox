if sprite != item_id_read(ID,2){
   sprite = item_id_read(ID,2)
   sprite_index = sprite
}

if point_distance(x,y,o_player.x,o_player.y)<=50{
var pDir=point_direction(x,y,o_player.x,o_player.y)
   vx = smooth_approach(vx,lengthdir_x(8,pDir),0.07);
   vy = smooth_approach(vy,lengthdir_y(8,pDir),0.07);
   if point_distance(x,y,o_player.x,o_player.y)<=5{
      inventory_item_add(ID,1)
      instance_destroy();
      //repeat (irandom(30)) custom_dust(x,y,random_range(-1,1),random_range(-1,1),c_gray)
   } 
}else {
      vx = smooth_approach(vx,0,0.06);
      vy = smooth_approach(vy,0,0.06);
   }

   
   
/// Check Collisions

collision();

x+=vx;
y+=vy;

// Control Depth

depth = -y;

