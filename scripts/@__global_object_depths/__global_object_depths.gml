//// Initialise the global array that allows the lookup of the depth of a given object
//// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
//// NOTE: MacroExpansion is used to insert the array initialisation at import time
//gml_pragma( "global", "__global_object_depths()");

//// insert the generated arrays here
//global.__objectDepths[0] = 0; // o_camera
//global.__objectDepths[1] = 0; // o_inventory
//global.__objectDepths[2] = -100; // o_cursor
//global.__objectDepths[3] = -10000; // oCycle
//global.__objectDepths[4] = 0; // p_block
//global.__objectDepths[5] = 0; // p_solid
//global.__objectDepths[6] = 0; // p_enemy
//global.__objectDepths[7] = 0; // p_entity
//global.__objectDepths[8] = -100; // obj_drop
//global.__objectDepths[9] = 0; // p_floor
//global.__objectDepths[10] = 100; // oChunk
//global.__objectDepths[11] = 0; // oGenerator
//global.__objectDepths[12] = 0; // o_invisibleBlock
//global.__objectDepths[13] = 0; // o_chest
//global.__objectDepths[14] = 10000; // o_ground
//global.__objectDepths[15] = 10000; // o_stone
//global.__objectDepths[16] = -102; // o_tree
//global.__objectDepths[17] = 0; // o_bush

//global.__objectDepths[19] = -100; // o_bullet
//global.__objectDepths[20] = -100; // o_player
//global.__objectDepths[21] = 0; // o_enemy
//global.__objectDepths[22] = -2; // o_dust


//global.__objectNames[0] = "o_camera";
//global.__objectNames[1] = "o_inventory";
//global.__objectNames[2] = "o_cursor";
//global.__objectNames[3] = "oCycle";
//global.__objectNames[4] = "p_block";
//global.__objectNames[5] = "p_solid";
//global.__objectNames[6] = "p_enemy";
//global.__objectNames[7] = "p_entity";
//global.__objectNames[8] = "obj_drop";
//global.__objectNames[9] = "p_floor";
//global.__objectNames[10] = "oChunk";
//global.__objectNames[11] = "oGenerator";
//global.__objectNames[12] = "o_invisibleBlock";
//global.__objectNames[13] = "o_chest";
//global.__objectNames[14] = "o_ground";
//global.__objectNames[15] = "o_stone";
//global.__objectNames[16] = "o_tree";
//global.__objectNames[17] = "o_bush";

//global.__objectNames[19] = "o_bullet";
//global.__objectNames[20] = "o_player";
//global.__objectNames[21] = "o_enemy";
//global.__objectNames[22] = "o_dust";


//// create another array that has the correct entries
//var len = array_length_1d(global.__objectDepths);
//global.__objectID2Depth = [];
//for( var i=0; i<len; ++i ) {
//	var objID = asset_get_index( global.__objectNames[i] );
//	if (objID >= 0) {
//		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
//	} // end if
//} // end for