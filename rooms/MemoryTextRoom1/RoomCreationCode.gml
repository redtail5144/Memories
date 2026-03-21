// initialize global variables
// for memories remembered and forgotten
global.remember = 0
global.forget = 0

var _message = "I awake staring at a cave entrance. The entrance before me seems to be staring back at me. I can't remember who I am, but I feel called towards this cave.\n\nI have this feeling that I'm missing something. Like my memories are lost and I need to go find them.\n\nAs if reading my thoughts, I begin hearing my memories echoing from the mouth of this tunnel. However, I can't quite see thme from here.\n\nShould I venture forth?"

instance_create_layer(0, 0, "Instances", objMemory, {
	//sprite_index: NULL, // Set the memory image
	question: string(_message), // Set the memory question
	memoryColour: c_white, // Colour of question text
	memoryFont: Font1 // Font of question text
})
	
	
instance_create_layer(0, 0, "Instances", objGoNextRoom, {
	nRoom: MemoryRoom1
})