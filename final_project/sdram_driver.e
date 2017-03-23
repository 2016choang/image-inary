//0x80000030	write 	bit 0: sdram_command 	SDRAM memory
//0x80000031	read 	bit 0: sdram_response
//0x80000032	write 	bit 0: sdram_write
//0x80000033	write 	bits 24-0: sdram_address[24:0]
//0x80000034	write 	bits 31-0: sdram_data_write
//0x80000035	read 	bits 31-0: sdram_data_read 

sdram		cp 0x80000030 one



one		1
zero		0
sd_response	0
data		0
address		0
