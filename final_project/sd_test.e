
start	call sd return
	cp address i	
	add i i one 
	cp LED_RED data
	bne start address zero
	


return 	0
i	0
LED_RED 0x80000001

#include sd_driver.e
