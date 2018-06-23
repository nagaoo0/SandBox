

for(var i = 0; i < chunkSize / blockSize; i++){
    for(var j = 0; j < chunkSize / blockSize; j++){
        if chunk[# i, j]== 2 {
            draw_sprite(s_grass,0,x+i*16,y+j*16)
        }else
        if chunk[# i, j]== 1 {
            draw_sprite(s_stone,0,x+i*16,y+j*16)
        }else{ 
            draw_sprite(s_water,0,x+i*16,y+j*16)
        }
    }
}


