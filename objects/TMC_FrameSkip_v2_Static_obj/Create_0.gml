//this controller is a little different but more stable
//it requires you to manually set the global.DrawFPS variable
//manually in an option screen to a speed the user desired
//there is no automatic detection, the game will draw at the specified DrawFPS
global.DrawFPS = 60; //drawing speed, 45 for android
room_started = true;
next_draw_t = 0; //when is the next frame time to draw
total_t_draw = 0; //hold the time for the draw detection
draw_enabled = 0;


