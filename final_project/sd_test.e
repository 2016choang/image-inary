
start	call sd return
	cp address i	
	add i i one 
	cp led_red data
	bne start address 0x1000
	halt 


return 	0
i	0
led_red 0x80000001

#include sd_driver.e
