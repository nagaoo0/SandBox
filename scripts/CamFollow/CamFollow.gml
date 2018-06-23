//CamFollow()

if (instance_exists(o_player)) {
    var targetx = (o_player.x);
    var targety = (o_player.y);
    
    CamMoveTo(targetx, targety, .1);
}
