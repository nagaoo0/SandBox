//CamBuyChunk()

if (instance_exists(oChunk)) {
    var targetx = ((currentChunk_x*256+chunkSize/2)+(mouse_x))/2;
    var targety = ((currentChunk_y*256+chunkSize/2)+(mouse_y))/2;
    
    CamMoveTo(targetx, targety, .05);
    
  __view_set( e__VW.WView, view_current, smooth_approach(__view_get( e__VW.WView, view_current ), w*1.5, 0.05 ))
  __view_set( e__VW.HView, view_current, smooth_approach(__view_get( e__VW.HView, view_current ), h*1.5, 0.05 ))


}


