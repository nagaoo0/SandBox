x=o_player.x
y=o_player.y

if keyboard_check_pressed(ord("M")){
    //Just add random items to inventory, if the inventory is full, 
    //you'll get return the remaining stack
   var stack_remain;
   stack_remain = inventory_item_add(irandom_range(0, 50),16)
   show_debug_message("Remaining Stack: " + string(stack_remain))
   
}

/*if keyboard_check_pressed(ord("W")){
   //Clear the inventory
   inventory_clear();
   show_message("Inventory was cleared");
}

if keyboard_check_pressed(ord("E")){
   //Save the inventory, the best, the save file are unreadable.
   inventory_save(working_directory + "\inventory.dat");
   show_message("Inventory was saved");
}

if keyboard_check_pressed(ord("R")){
   //Load the inventory
   inventory_load(working_directory + "\inventory.dat");
   show_message("Inventory was loaded");
}

if keyboard_check_pressed(ord("T")){
   //Sorting inventory, typ -> 0 = 1. 2. 3. (from ID) | 1 = A. B. C. | 2 = biggest Stack
   //Reserve Sorting -> false|true*/

   /*show_message("Inventory was sorted");
}

if keyboard_check_pressed(ord("Y")){
   //Clear a Item completyYy
   inventory_item_clear(inventory_last_select());
   show_message("Selected Item was cleared");
}

if keyboard_check_pressed(ord("U")){
   //Delete a Item by stack amounut
   inventory_item_delete(inventory_last_select(),1);
   show_message("Selected Item was deleted (1 Amount less)");
}

if keyboard_check_pressed(ord("I")){
   //Drop a Item (object is needed);
   inventory_item_drop(inventory_last_select(),1,view_wview[0]-64+random(48),view_hview[0]/2-random(64)+random(64),obj_drop);
   //show_message("Selected Item was dropped");
}

if keyboard_check_pressed(ord("O")){
   //Find a Item from Inventory
   var amount;
   amount = inventory_item_find(34) //search ID 34 - Leaf, return of amount the item.
   show_message("Amount founded Item: " + string(amount));
}

if keyboard_check_pressed(ord("P")){
   //Use a Item, return: <true|false> (true if they have special effects, false not)
   var has_script;
   has_script = inventory_item_use(inventory_last_select());
}

if keyboard_check_pressed(ord("A")){
   //Exchange the Inventory Slot
   inventory_item_exchange(inventory_select(),inventory_last_select());
}


/* */
/*  */
