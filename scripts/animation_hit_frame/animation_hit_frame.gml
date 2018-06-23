/// @description animation_hit_frame(frame)
/// @param frame
var frame = argument[0]; // The frame to check for
// Will return true if an animation is on a specific frame
return (image_index >= frame+1 - image_speed) && (image_index < frame+1);
