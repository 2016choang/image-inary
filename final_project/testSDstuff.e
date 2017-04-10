//test SDCtR

	call SDCardToRAM returnSDCardToRam
	call RAMtoScreen returnRAMtoScreen
	halt

returnSDCardToRam		0
returnRAMtoScreen		0
returnVGAwrite			0
one						1
zero					0
return					0
return2					0

#include SDCardToRam.e
#include SDRAMToScreen.e
#include sd_driver.e
#include VGAwrite.e
#include sdram_driver.e
