if(left) { // if left is selected
	// increment remember counter
	global.remember++
	
	// go to remember room
	room_goto(roomRemember)
} else if(right) { // if right is selected
	// increment forget counter
	global.forget++
	
	// go to forget room
	room_goto(roomForget)
}