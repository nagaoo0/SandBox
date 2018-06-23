chunk = instance_position(currentChunk_x*256,currentChunk_y*256,oChunk)
with(chunk){
    trees-=1;
    //print(trees)
}

repeat(irandom_range(3,6))
with (instance_create(x,y,obj_drop)) {

    ID=19;
    vx=random_range(-1,1);
    vy=random_range(-1,1);

}
repeat(irandom_range(1,2))
with (instance_create(x,y,obj_drop)) {

    ID=0;
    vx=random_range(-1,1);
    vy=random_range(-1,1);

}


