
start	call sd return
	cp address i	
	add i i one 
	cp led_red data
	bne start address zero
	


return 	0
i	0
led_red 0x80000001

#include sd_driver.e
