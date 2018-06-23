//Drop in the room you want frame skipping to work.
//If you want to enable frame skipping and disable frame skipping, use a controller object that will create
// this object and destroy this object when needed
//Make the object invisible if you dont want to see the debug output

//This object is depricated
//Changes for 2.0.0
//The skip now goes from no skip to skip every other frame
//as it is the anly skip factor that shows not visual jitter
//the origial object is still available as TMC_FrameSkipOld_obj

//Changes for 1.0.3
//Fixed deadlock which was introduced in 1.0.1
//fixed the skip to be more evenly distributed
//moved the debug fps string to be calculated in end step
//added an moving object in the demo for a more visual feedback
//modified the delay to only apply on room change

//Changes for 1.0.2
//Added destroy event to reset the draw so you can create and destroy the object to turn on or off the feature
//tweaked the number of fps entried for faster swithing
//added more detailed demo

//Changes for 1.0.1
//Added delay of detection for 2 seconds to prevent false detection of low frame rate
//Fixed a skip bug, when a skip would happen once every second even though the fps was decent
//made code compatible with persistent option if you choose to set the persistent flag of the object
//create
room_start =false;
//debug_txt = "";
event_user(0);


