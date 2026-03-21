/// @function roomInit(memSprite, memQues, monSpriteN, monSpriteR, monSpriteL, rRem, rFor, split, textC, textF)
/// @description Initializes a room with memory and monitor objects
/// @param {sprite} memSprite - Memory sprite to display
/// @param {string} memQues - Text for memory to display
/// @param {sprite} monSpriteN - Monitor neutral sprite
/// @param {sprite} monSpriteR - Monitor right sprite
/// @param {sprite} monSpriteL - Monitor left sprite
/// @param {room} rRem - Room to go to if remember
/// @param {room} rFor - Room to go to if forget
/// @param {bool} split - Flag for if it should splinter for next room
/// @param {color} textC - Colour of memory text (default: red)
/// @param {font} textF - Font of text (default: Font1)
function roomInit(memSprite, memQues, monSpriteN, monSpriteR, monSpriteL, rRem, rFor, split, textC = c_red, textF = Font1){
	// Create the memory object
	instance_create_layer(0, 0, "Instances", objMemory, {
		sprite_index: memSprite, // Set the memory image
		question: string(memQues), // Set the memory question
		memoryColour: textC, // Colour of question text
		memoryFont: textF // Font of question text
		})
	
	// Create monitor object
	// Put on layer above the memory
	instance_create_layer(0, 0, "Assets_1", objMonitor, {
		spriteN: monSpriteN, // Set neutral monitor sprite
		spriteR: monSpriteR, // Set right monitor sprite
		spriteL: monSpriteL, // Set left monitor sprite
		splinter: split, // Set if memory splinters
		roomRemember: rRem, // Set room to goto if remember
		roomForget: rFor // Set room to goto if forget
		})	
}

function stringWrap(_string, _maxWidth = display_get_gui_width() - 50) {
		var _length = string_length(_string)
		var _lastSpace = 1
		var _count = 0
		var _curString = ""
		
		show_debug_message("stringWrapped")
		
		repeat(_length) {
			_curString = string_copy(_string, 1, _count)
			
			if(string_char_at(_string, _count) == " ") _lastSpace = _count
			
			if(string_width(_curString) > _maxWidth) {
				_string = string_delete(_string, _lastSpace, 1)
				_string = string_insert("\n", _string, _lastSpace)
			}
			
			_count++
		}
		
		return _string
}