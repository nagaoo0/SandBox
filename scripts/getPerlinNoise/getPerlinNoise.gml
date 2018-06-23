var xx = argument0;
var range = argument1;

var sampleDelta = 16;

var noise = 0;

range = range div 2;

while(sampleDelta > 0){
    var sampleIndex = xx div sampleDelta;
    
    var prog = (xx % sampleDelta) / sampleDelta;
    
    var left_random = randomSeed(sampleIndex,range);
    var right_random = randomSeed(sampleIndex + 1,range);
    
    noise += (1-prog)*left_random + prog*right_random;
    
    sampleDelta = sampleDelta div 2;
    range = range div 2;
    range = max(1,range);
}

return round(noise);
