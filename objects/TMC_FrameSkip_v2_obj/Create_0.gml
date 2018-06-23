//Drop in the room you want frame skipping to work.
//If you want to enable frame skipping and disable frame skipping, use a controller object that will create
// this object and destroy this object when needed
//Make the object invisible if you dont want to see the debug output


//Changes for 2.0.0
//The skip now goes from no skip to skip every other frame
//as it is the anly skip factor that shows not visual jitter
//the origial object is still available as TMC_FrameSkipOld_obj
//this new object is more responsive to change and requires no tweaking
//tested on Windows and Android at 30, 60, 90 fps

draw_enabled = true;
skip_frame = false;
//debug_txt = "";
frame_at = 0;
start_t = get_timer();
numvals = room_speed*5;
first_time = true;



