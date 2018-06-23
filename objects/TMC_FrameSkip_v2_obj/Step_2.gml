
if(first_time)
{
    skip_frame = false;
    frame_at = 0;
    valat = 0;
    repeat(numvals)
    {
       vals[valat] = 0; //expected average;
       valat++;
    }
    valat = 0;
    draw_enabled = true;
    draw_enable_drawevent(1);
    first_time = false;
    start_t = get_timer();
}
if(skip_frame == false)
{
    deviation = 1/60 * room_speed
    end_t = get_timer();
    delta_t = end_t-start_t;
    
    
    vals[valat] =  delta_t; //the value for this frame, added to rotary table
    //if(delta_t*room_speed >(1000000))
    {
        vals[valat] *=(delta_t*(room_speed-deviation)) / (1000000); //give it more weight for faster switching to skipping
    }
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
    
    draw_enabled = (avg*(room_speed-deviation)) <(1000000)
    //draw_enabled = false;
    //debug_txt = "FPS/ROOM_SPEED/FPS REAL:#" + string(fps) +"/" +string(room_speed)+ "/" + string(floor(fps_real));;
    //debug_txt += "#Cost: " + string(avg*room_speed/1000000)+"/1";
    //debug_txt += "#SKIP: " + string( !draw_enabled);
    

}

skip_frame = false;
draw_enable_drawevent(1);
        

if(draw_enabled == false)
{
    if((frame_at mod 2) == 1) 
    {
        skip_frame = true;
        draw_enable_drawevent(0);

    }

}
//inc frame at
frame_at++;
if(skip_frame == false) 
    start_t = get_timer();


x=o_player.x; y=o_player.y