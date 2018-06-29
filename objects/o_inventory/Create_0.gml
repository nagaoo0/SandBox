globalvar items,input;

items=ds_list_create();
input = ds_map_create();
recipe = ds_map_create();

item_int();
recipe_int();


inventory_int(5,20);


yy=0;

last_stack = 0
last_slot = 0
last_id_item = 0
   
current_stack = 0
current_slot = 0
current_id_item = 0

a=0
enum inv{
     open,
     closed
}
inv=inv.closed



