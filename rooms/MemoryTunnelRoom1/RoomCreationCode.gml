//just a tunnel, copy this code. just memory, not text
instance_create_layer(0, 0, "Instances", objMemory, {
	sprite_index: MemoryTunnel1, // Set the memory image, which tunnel to use
	//ignore everything else
	//question: string(_message), // Set the memory question
	memoryColour: c_white, // Colour of question text
	memoryFont: Font1 // Font of question text
})
	
	
instance_create_layer(0, 0, "Instances", objGoNextRoom, {
	nRoom: MemoryTextRoom1
	//name of room to go to next
})

//functioning button wallpaper overlay
//
instance_create_layer(0, 0, "Assets_1", objMonitor, {
    spriteN: MonitorNext,
    spriteR: MonitorNext,
    spriteL: MonitorNext
})