// initialize global variables
// for memories remembered and forgotten
global.remember = 0
global.forget = 0

var _message = "This is an interactive story game. It explores my photography through a variety of images, referring to them as memories.\n\nAs the viewer, you get to choose the story you engage with by chooisng certain paths.\n\nAll stories are inspired by true events.\n\nPlease Enjoy :^)"

instance_create_layer(0, 0, "Instances", objMemory, {
	//sprite_index: NULL, // Set the memory image
	question: string(_message), // Set the memory question
	memoryColour: c_white, // Colour of question text
	memoryFont: Font1 // Font of question text
})
	
	
instance_create_layer(0, 0, "Instances", objGoNextRoom, {
	nRoom: MemoryTunnelRoom1
})