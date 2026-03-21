// initialize global variables
// for memories remembered and forgotten
global.remember = 0
global.forget = 0

var _text = "I awake staring at a cave entrance. The entrance before me seems to be staring back at me. I can't remember who I am, but I feel called towards this cave.\n\nI have this feeling that I'm missing something. Like my memories are lost and I need to go find them.\n\nAs if reading my thoughts, I begin hearing my memories echoing from the mouth of this tunnel. However, I can't quite see thme from here.\n\nShould I venture forth?"

//this is only for left or right choice
roomInit(blackSprite, _text, MonitorNext, MonitorNext, MonitorNext, MemoryTunnelRoom2, MemoryTunnelRoom2, false)