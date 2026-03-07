if(left) { // if left is selected 
} else if(right) { // if right is selected
	// turn off flag for right selected
	right = false
	// change sprite back to neutral
	sprite_index = spriteN
} else { // if in neutral state
	// turn on flag for left selected
	left = true
	// change sprite to left selected
	sprite_index = spriteL
}