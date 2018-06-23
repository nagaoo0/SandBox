var xx = argument0;
var yy = argument1;
var range = argument2;

var sampleDelta = 16;

var noise = 0;

range = range div 2;

while(sampleDelta > 0){
    var index_x = xx div sampleDelta;
    var index_y = yy div sampleDelta;
    
    var t_x = (abs(xx) % sampleDelta) / sampleDelta;
    var t_y = (abs(yy) % sampleDelta) / sampleDelta;
    
    if(sign(xx) == -1){t_x = 1 - t_x; index_x--;}
    if(sign(yy) == -1){t_y = 1 - t_y; index_y--;}
    
    var r_00 = randomSeed(range,index_x,   index_y);
    var r_01 = randomSeed(range,index_x,   index_y+1);
    var r_10 = randomSeed(range,index_x+1, index_y);
    var r_11 = randomSeed(range,index_x+1, index_y+1);
    
    var r_0 = lerp(r_00,r_01,t_y);
    var r_1 = lerp(r_10,r_11,t_y);
    
    noise += lerp(r_0,r_1,t_x);
    
    sampleDelta = sampleDelta div 2;
    range = range div 2;
    range = max(1,range);
}

return round(noise);
