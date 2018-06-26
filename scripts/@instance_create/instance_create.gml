/// @description Creates an instance of a given object at a given position.
/// @param x The x position the object will be created at.
/// @param y The y position the object will be created at.
/// @param obj The object to create an instance of.
//var myDepth = object_get_depth( argument2 );
return instance_create_layer( argument0, argument1, "Ground", argument2 );
