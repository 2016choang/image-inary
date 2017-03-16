
start	call sd return
	cp address i	
	add i i one 
	cp 0x80000001 data
	bne start address 0x1000
	


return 	0
i	0
//LED_RED 0x80000001

#include sd_driver.e
