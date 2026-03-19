// iterates through the text for typewritter effect
var _text = string_copy(question, 1, count)

// draw the text
draw_text(_width/7, _height/5, _text)
	
// if there is still text to draw iterate
if(count < string_length(question)) {
	// play typing sound effect
	if(count % 6) audio_play_sound(keyClick, 1, false)
	
	// Controls the speed of the text
	count += 0.3
}