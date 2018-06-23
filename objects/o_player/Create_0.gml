/// @description  Initialize Player

//Inherit Variables
event_inherited();


// Movement
vxMax = 2;
vyMax = 2;
accel = .30;
fric = 1;

// Squash and Stretch
xscale = 1;
yscale = 1;

// States
IDLE = 10;
RUN = 11;
ATTACK = 12;
DEFEND = 13;

// Initialize Properties
state = IDLE
attackRate = .05;
dir = 0;
facing = image_xscale;

dir=       0;
rawdir=     point_direction(x, y, mouse_x,mouse_y)
cursor_x = lengthdir_x(200, dir)
cursor_y = lengthdir_y(200, dir)
d=         point_distance(x, y, mouse_x, mouse_y)

roomw = room_width/16;
roomh = room_height/16;

if !instance_exists(o_cursor) instance_create(x,y,o_cursor)

lastChunk = ds_map_find_last(chunkMap)
if lastChunk == ds_map_find_value(chunkMap,getKey(0,0))
{
    x=x+((16*16)/2)
    y=y+((16*16)/2)
}

cx = cursor_x div 16*16;//cursor center x
cy = cursor_y div 16 *16;//cursor center y

cxx = 0
cyy = 0
 

         

