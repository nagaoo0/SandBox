
switch(state) {
    case IDLE:
        image_speed = .15;
        switch(dir) {
        case 0:
            sprite_index = s_player_F;
        break;
        
        case 1:
            sprite_index = s_player_B;
        break;
        
        case 2:
            sprite_index = s_player_S;
        break;
        }
        draw_sprite_ext(s_shadow, 1, x,y+2,1,1,0,c_white,0.5);
    break;
    
    case RUN:
        if(vx != 0) {
        image_speed = abs(vx)/10;
        } else {
        image_speed = abs(vy)/10;
        }
        switch(dir) {
        case 0:
            sprite_index = s_player_run_F;
        break;
        
        case 1:
            sprite_index = s_player_run_B;
        break;
        
        case 2:
            sprite_index = s_player_run_S;
        break;
        }
        draw_sprite_ext(s_shadow, image_index, x,y+2,1,1,0,c_white,0.5);
    break;
}



// Draw Player
draw_sprite_ext(sprite_index, image_index, x, y + (16 - 16 * yscale) * 0.25, facing * xscale, yscale, 0, c_white, image_alpha);

// Draw cursor
  cursor_x = mouse_x
  cursor_y = mouse_y
  var ccx =currentChunk_x*256, ccy= currentChunk_y*256; 
  
cx = ccx + ((cursor_x-ccx) div 16)*16
cy = ccy + ((cursor_y-ccy) div 16)*16


cxx = smooth_approach(cxx,cx,0.38)
cyy = smooth_approach(cyy,cy,0.38)

cxx= clamp(cxx,currentChunk_x*256,currentChunk_x*256 + chunkSize)
cyy= clamp(cyy,currentChunk_y*256,currentChunk_y*256 + chunkSize)

if o_cursor.selected == noone && o_inventory.inv==inv.closed draw_sprite(s_cursor,0,cxx,cyy)

if keyboard_check(vk_alt) playertime+=5;



