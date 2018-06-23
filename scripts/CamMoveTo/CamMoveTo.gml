/// @description CamMoveTo()
var xx = argument[0];
var yy = argument[1];
var spd = argument[2];

x += ((xx - x) * spd) +random_range(-shake,shake);
y += ((yy - y) * spd) +random_range(-shake, shake);
