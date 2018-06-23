var str = "";
for(var i = 0; i < argument_count; i++){
    if(is_real(argument[i])){
        str = str + string(argument[i]);
    }else{
        str = str + argument[i];
    }
}
show_debug_message(str);
