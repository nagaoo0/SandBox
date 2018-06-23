

//some real time based variables

var t= get_timer();
var dt = delta_time;
total_t_draw+=dt;
draw_enabled = total_t_draw>next_draw_t;
draw_enable_drawevent(draw_enabled)
if(draw_enabled)
{
    next_draw_t = total_t_draw+1000000/global.DrawFPS;
}

room_started = false;


x= o_player.x;
y= o_player.y;