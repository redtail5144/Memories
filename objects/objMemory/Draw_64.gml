if(init) {
	// iterates through the text for typewritter effect
	var _text = string_copy(textWrapped, 1, count)

	// draw the text
	draw_text(20, 50, _text)
	
	// if there is still text to draw iterate
	if(count < string_length(textWrapped)) {
		// play typing sound effect
		if(count % 7 == 0) audio_play_sound(keyClick, 1, false)
	
		// Controls the speed of the text
		count ++
	}
} else {
		textWrapped = stringWrap(question)
		
		init = true
}

