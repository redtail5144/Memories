// Initializes a room
// memSprite = memory sprite, memQues = text for memory to display, monSprite = monitor sprite
// split = flag for if it should splinter for next room, textC = colour of memory text
// textF = font of text, monSpriteN = monitor neutral sprite, monSpriteR = monitor right sprite
// monSpriteL = monitor left sprite, rRem = room to go to if remember, rFor = room to go to if forget
function roomInit(memSprite, memQues, split, textC = c_red, textF = Font1, monSpriteN, monSpriteR, monSpriteL, rRem, rFor){
	// Create the memory object
	var newInstance = instance_create_layer(0, 0, "Instances", objMemory, {
		sprite_index: memSprite, //Set the memory image
		question: string(memQues), //Set the memory question
		memoryColour: textC, // Colour of question text
		memoryFont: textF // Font of question text
		})
	
	// Create monitor object
	// Put on layer above the memory
	var newInstance = instance_create_layer(0, 0, "Assets_1", objMonitor, {
		spriteN: monSpriteN, // Set neutral monitor sprite
		spriteR: monSpriteR, // Set right monitor sprite
		spriteL: monSpriteL, // Set left moniotr sprite
		splinter: split, // Set if memory splinters
		roomRemember: rRem, // Set room to goto if remember
		roomForget: rFor // Set room to goto if forget
		})	
}