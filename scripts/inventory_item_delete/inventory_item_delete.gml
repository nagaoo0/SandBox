/// @description  inventory_item_delete(SlotID, Amount)
/// @param SlotID
/// @param  Amount
var slot_id, amount;
slot_id = argument0;
amount = argument1;
if inventory_read("slot",slot_id) = true{
   if amount >= 0{
      var item_amount;
      item_amount = inventory_read("Stack",slot_id)
      item_amount = max(item_amount-amount,0)
      if item_amount = 0{
			var pos = ds_list_find_index(items,ds_map_find_value(global.inventory,"ID"+string(slot_id)))
			ds_list_delete(items,pos)
		  
         inventory_write("slot",slot_id,false)
         inventory_write("ID",slot_id,-1)
         inventory_write("Stack",slot_id,-1)

      }else{
         inventory_write("Stack",slot_id,item_amount)
      }
   }else{
      inventory_item_clear(slot_id)  
   }
}

	
