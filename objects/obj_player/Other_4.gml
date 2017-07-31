/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_room_entry)) {
	with (obj_room_entry) {
		if (last_room == other.last_room) {
			other.x = x;
			other.y = y;
		}
	}
}

last_room = room;