//0x80000030	write 	bit 0: sdram_command 	SDRAM memory
//0x80000031	read 	bit 0: sdram_response
//0x80000032	write 	bit 0: sdram_write
//0x80000033	write 	bits 24-0: sdram_address[24:0]
//0x80000034	write 	bits 31-0: sdram_data_write
//0x80000035	read 	bits 31-0: sdram_data_read 

sdram		cp 0x80000033 address // address
		cp 0x80000032 write    // write
		cp 0x80000030 one	//command
wait_one	cp sdram_response 0x80000081
		bne wait_one sdram_response one
compare		bne read write one	//writes data
		cp 0x80000034 data
		cp 0x80000030 zero	//command
		
		bne wait_two one zero //skips read
read		cp data 0x80000035
		cp 0x80000030 zero

wait_two 	cp sdram_response 0x80000081	//waits for response
		bne wait_two sdram_response zero

		ret return

one		1
zero		0
sdram_response	0
data		0
address		0
write 		1
