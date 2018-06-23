
if(room_start)
    start_t = get_timer();
else
    start_t = 0;

numvals = room_speed;
valat = 0;
repeat(numvals)
{
   vals[valat] = room_speed; //expected average;
   valat++;
}
valat = 0;

checkat = 0;
skip_every = room_speed+1; //default 1 more than max



