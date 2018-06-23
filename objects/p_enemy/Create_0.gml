/// @description Initialize Enemies

//Inherit Stats
event_inherited();
dmg = 2;
def = 1;
maxAP = 10;
curAP = 0;
attackRate = .05;

// Misc Stats
XP = 5;

//Enemy States
IDLE = 10;
ATTACK = 11;
DEFEND = 12;

//Initialize Enemy Properties
state = IDLE;

