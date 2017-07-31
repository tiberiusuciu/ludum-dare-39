/// @description Insert description here
// You can write your code in this editor


blocks = 5;
hspd = 0;
vspd = 0;
grav = 1;
wlkspd = 3;
runspd = 3.5;
sight = 32 * blocks;
dstToWalk = 0;

state = guard_idle;
alarm[0] = room_speed * random_range(1, 4);