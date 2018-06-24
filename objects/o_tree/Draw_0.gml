
if w != sprite_width
    w = smooth_approach(w,sprite_width,0.02)
if h != sprite_height
    h = smooth_approach(h,sprite_height,0.01)
    
 yy = smooth_approach(yy,0,0.1)
 
 if point_distance(x,y,o_player.x,o_player.y)<chunkSize 
draw_sprite(s_tree,image_index,x,y+yy)

if d==10 {depth=-1-(y-view_yview[view_current]);d=0;}
else d++;
