
if hasAcces!=undefined and hasProposed!=undefined{
	if !hasAcces{
		if !hasProposed 
		{
		    draw_set_alpha(0.75)
		    draw_set_color(c_black)
		    draw_rectangle(x,y,x+chunkSize,y+chunkSize,false)
		    draw_set_alpha(1)
		}
	if hasProposed
		{
		    draw_set_alpha(0.5)
		    draw_set_color(c_black)
		    draw_rectangle(x,y,x+chunkSize,y+chunkSize,false)
		    draw_set_alpha(1)
		    draw_set_color(c_white)
    
		    draw_text(x,y+chunkSize/2,string_hash_to_newline("Walk in to buy land"))
		    draw_text(x,y+chunkSize/2+20,string_hash_to_newline(string(price)))
		}

	}
if !hasAcces draw_text(x,y,string_hash_to_newline(price))
}

if point_in_rectangle(o_player.x,o_player.y,x,y,x+chunkSize,y+chunkSize){

var yy = sin((current_time)/200)*2
draw_panel(s_cursor,0,x-yy/2,y-yy/2,chunkSize+yy,chunkSize+yy,7)

}


//print(playertime)


