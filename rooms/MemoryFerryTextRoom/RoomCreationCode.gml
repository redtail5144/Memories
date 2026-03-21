// initialize global variables
// for memories remembered and forgotten
global.remember = 0
global.forget = 0

//place message here aka big block of text. add \n\n for next line to make paragraphs
//var _message = "I see the ferry is approaching.\n\nWatching the ferry dock is one of the most anxious and fascinating thing. Often the anxiety comes from the fear of missing your sailing, but the human instinct to gaze out at the scene is too consuming.  \n\nThis whole scenery is too beautiful. To not stop and slow down for a moment would be almost criminal.\n\nShould I stay here (Left) or board the ferry (Right)?"

//instance_create_layer(0, 0, "Instances", objMemory, {
	//sprite_index: NULL, // Set the memory image
	//question: string(_message), // Set the memory question
	//memoryColour: c_white, // Colour of question text
	//memoryFont: Font1 // Font of question text
//})
	
	
//instance_create_layer(0, 0, "Instances", objGoNextRoom, {
//	nRoom: MemoryTextRoom2
//})

//DONT FORGET TO ADD THIS
//instance_create_layer(0, 0, "Assets_1", objMonitor, {
  //  spriteN: Monitor,
   // spriteR: MonitorNo,
   // spriteL: MonitorYes
//})

_text = "I see the ferry is approaching.\n\nWatching the ferry dock is one of the most anxious and fascinating thing. Often the anxiety comes from the fear of missing your sailing, but the human instinct to gaze out at the scene is too consuming.  \n\nThis whole scenery is too beautiful. To not stop and slow down for a moment would be almost criminal.\n\nShould I stay here (Left) or board the ferry (Right)?"

//this is only for left or right choice
roomInit(blackSprite, _text, Monitor, MonitorNo, MonitorYes, FerryTownMemoryRoom, FerryLineUpMemory, false)

//USE THIS CODE FOR EVERYTHING
//asset_1 = monitor overlay

//change memory, monitors and rooms. Then you golden. Rooms the same if they are a next room, but different if its a splinter room. 
//IF A ROOM REQUIRES JUST TEXT, THE MEMORY# sprite IS subbed with BLACKSPIRTE. Sets background as solid black :)