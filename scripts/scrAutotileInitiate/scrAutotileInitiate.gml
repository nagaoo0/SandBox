/// @description scrAutotileInitiate( object, tileSize, moreTiles /*Not Up to date*/)
/// @param  object
/// @param  tileSize
/// @param  moreTiles /*Not Up to date*/
/*
Object to tile
Set tile size,
Set moreTiles to true or false,
True checks all surrounding tiles,
False checks only top, bottom and sides
*/

AutoTile=true;

o=argument0;
tileSize=argument1;
moreTiles=argument2;
enum mode{
     simple,
     moreTiles
}

if moreTiles == true{
   mode= mode.moreTiles;
} else mode = mode.simple;

n=tileSize/2;

t="";
r="";
b="";
l="";

a1="";
a2="";
a3="";
a4="";
a5="";
a6="";
a7="";
a8="";

c="";
