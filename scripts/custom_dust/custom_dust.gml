/// @description custom_dust(x,y,vx,vy,color)
/// @param x
/// @param y
/// @param vx
/// @param vy
/// @param color

with(instance_create(x+argument0,y+argument1,o_dust)){
  image_blend = argument4;
  vx = random_range(-argument2,argument2);
  vy = random_range(-argument3,argument3);
}
