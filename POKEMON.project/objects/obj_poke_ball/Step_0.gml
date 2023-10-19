move_towards_point(global.mewtwo.x, global.mewtwo.y, 8)
if (abs(global.mewtwo.x - x) + abs(global.mewtwo.y - y) < 350) {
	audio_stop_all()
	room_goto(winner)
}
