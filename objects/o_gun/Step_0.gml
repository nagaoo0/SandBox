x=smooth_approach(x,o_player.x,0.9)
y=smooth_approach(y,o_player.y,0.9)

rawdir=     point_direction(x, y, mouse_x,mouse_y)

image_angle = rawdir;

var nx = x+lengthdir_x(10,rawdir), ny = y+lengthdir_y(10,rawdir),
mLeft = mouse_check_button(mb_left);

if mLeft{
   var bullet = instance_create(nx,ny,o_bullet)
   with bullet {
        vx = lengthdir_x(10,o_gun.rawdir);
        vy = lengthdir_y(10,o_gun.rawdir);
   }
}


