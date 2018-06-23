/// @description spawning trees

if trees<5 && hasProposed {
    var xx = irandom_range(1,14), yy = irandom_range(1,14);
   

    if !place_meeting(x+xx*16,y+yy*16,o_tree) && chunk[# xx, yy]==2{
        instance_create(x+xx*16,y+yy*16,o_tree)
        trees+=1
    }


}

alarm[0]= room_speed*2+irandom(room_speed)*irandom(10)

