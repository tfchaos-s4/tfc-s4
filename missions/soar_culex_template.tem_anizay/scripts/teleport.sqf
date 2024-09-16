//Get the destination.

_dest = (_this select  3) select 0;

//Get a random direction

_dir = random 359;

// move the person 15 meters away from the destination.

player SetPos [(getMarkerPos _dest select 0) -0*sin (_dir), (getMarkerPos _dest select 1)-0*cos (_dir),+0];