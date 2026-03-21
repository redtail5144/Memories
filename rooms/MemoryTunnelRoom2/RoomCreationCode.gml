instance_create_layer(0, 0, "Instances", objMemory, {
	sprite_index: MemoryTunnel2, // Set the memory image
	//question: string(_message), // Set the memory question
	memoryColour: c_white, // Colour of question text
	memoryFont: Font1 // Font of question text
})
	
	
instance_create_layer(0, 0, "Instances", objGoNextRoom, {
	nRoom: MemoryTextRoom2
})