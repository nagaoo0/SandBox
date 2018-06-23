if harvest{
    image_index=h_image;
} else image_index=0;

if o_player.cx == x && o_player.cy == y && harvest{
    if mouse_check_button_pressed(mb_right){ 
        harvest= 0;
        repeat(irandom(10)) 
        with(instance_create(x+8,y+8,obj_drop)){
            ID = 3;
            randomize();
            vx=random_range(-2,2);
            vy=random_range(-2,2);            
        }
    }
}

