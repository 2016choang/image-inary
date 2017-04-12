//Team: Code Busters
//Authors: Jacob Rasmussen, Sach Vaidya
//Purpose: Tests the driver for the SD card

start	call sd return
		cp address i	
		add i i one 
		cp 0x80000001 i
		bne start i num10000
		cp 0x80000001 num50
		halt 


return 		0
i			0
led_red 	0x80000001
num16 		16
num50 		50
num10000 	10000

#include sd_driver.e
