	cp write one
	cp data dat
start	call sdram return
	cp write one
	cp data dat
	add i i one 
	cp address i	
	bne start address 0x1000
	halt 

dat	0xbeef
return 	0
i	0

#include sdram_driver.e
