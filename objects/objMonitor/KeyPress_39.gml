if(left) { // if left is selected
	// turn off flag for left selected
	left = false
	// return sprite to neutral
	sprite_index = spriteN
} else if(right) { // if right is selected
} else { // if neutral state
	// turn on flag for right selected
	right = true
	// change sprite to right selected
	sprite_index = spriteR
}