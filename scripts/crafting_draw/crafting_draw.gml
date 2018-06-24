if a!=0{

	draw_text(20,20,"Crafting")
	//crafting table
	draw_panel(spr_slot,1,20,40,42*3,42*5,10);
	//inputs
	for(var i=0; i<ds_list_size(items); i++){
		draw_text_ext(20,40+16*i,string(ds_list_find_value(items,i)),1,42*3);
		
	}

}

