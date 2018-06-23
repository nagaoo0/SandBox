/// @description Light

surface_set_target(light);


draw_set_blend_mode(bm_subtract)

draw_circle_colour(x,y,48,c_white,c_black,false)

draw_set_blend_mode(bm_normal)

surface_reset_target();

