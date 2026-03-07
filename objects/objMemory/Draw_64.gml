// set the font of the text
draw_set_font(memoryFont)
// set the colour of the text
draw_set_colour(memoryColour)

// iterates through the text for typewritter effect
var _text = string_copy(question, 1, count)

// draw the text
draw_text(display_get_gui_width()/7, display_get_gui_height()/5, _text)
	
// if there is still text to draw iterate
if(count < string_length(question)) {
	// play typing sound effect
	if(count % 6) audio_play_sound(keyClick, 1, false)
	
	count++
}