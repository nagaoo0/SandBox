time=playertime;
chunk_center = 8
price=0;
hasAcces=false;
hasProposed = false;
trees=0;



global.isGenerating=true

gen =true

ds_grid_set_region(chunk,0,0,chunkSize,chunkSize,0)




for(var i = 0; i < chunkSize / blockSize; i++){
    for(var j = 0; j < chunkSize / blockSize; j++){

        var zz = getPerlinNoise_2D(x / blockSize + i,y / blockSize + j,0.5);
        
        chunk[# i,j] = round(zz/2+0.5);
        if chunk[# i,j] == 2 price++
                    print(round((zz/2+0.5)))

        //if chunk[# i,j] == 2 instance_create(x+i*16,y+j*16,o_ground)
        //if chunk[# i,j] == 1 instance_create(x+i*16,y+j*16,o_stone)

        if irandom(255)==0 && chunk[# i,j] == 2
             instance_create(x+i*16,y+j*16,o_bush)
        
    }
}



if x==0 && y==0
{
    for(var i = 0; i < chunkSize / blockSize; i++){
    for(var j = 0; j < chunkSize / blockSize; j++){
        if chunk[# i, j] == 0 room_restart();
    }
    hasAcces=true;
    hasProposed = true;
}

}
