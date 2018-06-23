//endstep

//delay the check for 2 seconds
if(get_timer()-start_t < 2000000) exit;

vals[valat] =  fps; //the value for this frame, added to rotary table
//increase rotary reference
valat++;
valat= valat mod numvals; //rotary reference index 0,1,2,3,....299,0,1,2,3,4...299

//average
var avg = 0;
var at = 0;
repeat(numvals)
{
   avg += vals[at]; //add to average var
   at++;
}
avg/=numvals; //average


//if lagging or not increase/decrease num frames to skip via skip_every
if(avg<room_speed-2*(room_speed/30)) //<28 for 30, <56 for 60
    skip_every -=.1;
else if(avg=room_speed)
    skip_every +=.025;

skip_every = median(2,skip_every,room_speed+1)
var modval = round(skip_every);
var modat = round(skip_every)-1;
//if the frame fall on a modulo
if((checkat mod modval) == modat && skip_every<=room_speed) 
{
    draw_enable_drawevent(0);
   
}
else
{
    draw_enable_drawevent(1);
    
}
//inc frame at
checkat++;

//debug_txt = "FPS/ROOM_SPEED/FPS REAL:#" + string(fps) +"/" +string(room_speed)+ "/" + string(floor(fps_real));;
//debug_txt += "#skip every: " + string( skip_every * (skip_every<=room_speed));





