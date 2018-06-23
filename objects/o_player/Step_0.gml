playertime+=1/room_speed
/// Inputs
globalvar kUp, kDown, kLeft, kRight, kSelect, kBack, mLeft, mRight;

kUp = keyboard_check(ord("Z"));
kDown = keyboard_check(ord("S"));
kLeft = keyboard_check(ord("Q"));
kRight = keyboard_check(ord("D"));
kSelect = 0
kBack = 0
mLeft = mouse_check_button(mb_left);
mRight = mouse_check_button(mb_right);

// Movement
//Left
if(kLeft && !kRight)

{
    facing = -1;
    state = RUN;
    if (vx > 0) {
        vx = approach(vx,0,fric);
    }
    vx = approach(vx,-vxMax,accel);
    if(!kUp && !kDown) {
        if (vy != 0) {
            vy = approach(vy,0,fric);
        }
    }
    
    dir = 2;
}

//Right
if(kRight && !kLeft) 

{
    facing = 1;
    state = RUN;
    if (vx < 0) {
        vx = approach(vx,0,fric);
    }
    vx = approach(vx,vxMax,accel);
    if(!kUp && !kDown) {
        if (vy != 0) {
            vy = approach(vy,0,fric);
        }
    }
    
    dir = 2;
}

//Up
if(kUp && !kDown) 
{
    state = RUN;
    if (vy > 0) {
        vy = approach(vy,0,fric);
    }
    vy = approach(vy,-vyMax,accel);
    
    if(!kLeft && !kRight) {
        if (vx != 0) {
            vx = approach(vx,0,fric);
        }
    }
    if((vy*vx) == 0) {
        dir = 1;
        } else {
        dir = 2;
        }
}

//Down
if(kDown && !kUp)
{
    state = RUN;
    if (vy < 0) {
        vy = approach(vy,0,fric);
    }
    vy = approach(vy,vyMax,accel);
    
    if(!kLeft && !kRight) {
        if (vx != 0) {
            vx = approach(vx,0,fric);
        }
    }
    if((vy*vx) == 0) {
        dir = 0;
        } else {
        dir = 2;
        }
}

//Friction
if(!kLeft && !kRight && !kUp && !kDown)
{
    state = IDLE;
    vx = approach(vx,0,fric);
    vy = approach(vy,0,fric);
}

 depth=y

/// Squash and Stretch

xscale = approach(xscale, 1, .05);
yscale = approach(yscale, 1, .05);

// While character runs
if(state == RUN) {
    if(animation_hit_frame(0) || animation_hit_frame(2)) {
        yscale = 0.80;
        xscale = 1.20;
    }
    if(p_chance(.1)) {
        var _vx = vx;
        var mydepth = depth+1;
        with(instance_create(other.x,other.y+7,o_dust)){
            depth = mydepth;
            vx = _vx*0.40;
            vy = random_range(-0.75,0.75);
            image_alpha= random_range(0.1,0.5)
          }
    }   
}

rawdir=     point_direction(x, y, mouse_x,mouse_y)
d=          point_distance(x, y, mouse_x, mouse_y)

if inventory_read("ID",global.ItemLastSelect) == 51
{
 if !instance_exists(o_gun) gun = instance_create(x,y,o_gun);
} else 
if instance_exists(o_gun) with (gun) instance_destroy();

if o_inventory.inv==inv.closed{
var nearblock= noone;
    if instance_exists(p_solid)
        nearblock= instance_nearest(cx,cy,p_solid)
        
if instance_exists(nearblock){ 
    if  mLeft  && !point_in_rectangle(nearblock.x,nearblock.y,cx,cy,cx+15,cy+15) 
        instance_create(cx,cy,p_block);
    }
    else
        if mLeft instance_create(cx,cy,p_block)
        
if mRight && place_meeting(cx,cy,p_solid) with (instance_position(cx,cy,p_solid)){ instance_destroy();}
}



