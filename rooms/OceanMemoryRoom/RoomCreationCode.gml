//this text leave blank, this is just for the monitor and memory
_text = ""

//anytime there is a memory that is just next, it needs to be set up like the tunnel code

//change memory, ignore monitors, left side room direction, right side room direction
//if its a memory next and not a choice, put all monitors to memorynext not memory left/right
//roomInit(Memory7, _text, Monitor, MonitorNo, MonitorYes, OceanMemoryTextRoom, OceanMemoryTextRoom, false)

//just a tunnel or memory w/only next , copy this code.
instance_create_layer(0, 0, "Instances", objMemory, {
	sprite_index: Memory7, // Set the memory image, which tunnel to use
	//ignore everything else
	//question: string(_message), // Set the memory question
	memoryColour: c_white, // Colour of question text
	memoryFont: Font1 // Font of question text
})
	
	
instance_create_layer(0, 0, "Instances", objGoNextRoom, {
	nRoom: OceanMemoryTextRoom
	//name of room to go to next
})

//functioning button wallpaper overlay
//
instance_create_layer(0, 0, "Assets_1", objMonitor, {
    spriteN: MonitorNext,
    spriteR: MonitorNext,
    spriteL: MonitorNext
})