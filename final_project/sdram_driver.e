//Team: Code Busters
//Group Members: Chris Hoang, Jacob Rasmussen, Sach Vaidya, Nicholas Young
//Driver for SDRAM 

//0x80000030	write 	bit 0: sdram_command 	SDRAM memory
//0x80000031	read 	bit 0: sdram_response
//0x80000032	write 	bit 0: sdram_write
//0x80000033	write 	bits 24-0: sdram_address[24:0]
//0x80000034	write 	bits 31-0: sdram_data_write
//0x80000035	read 	bits 31-0: sdram_data_read 

sdram		cp 0x80000033 addressRAM // address
			cp 0x80000032 writeRAM    // write
			cp 0x80000034 dataRAM
			cp 0x80000030 one	//command
wait_oneRAM	cp sdram_response 0x80000031
			bne wait_oneRAM sdram_response one

readRAM		cp dataRAM 0x80000035
			cp 0x80000030 zero // command

wait_twoRAM cp sdram_response 0x80000031	//waits for response
			bne wait_twoRAM sdram_response zero

			ret returnram

//one			1
//zero			0
sdram_response	0
dataRAM			0
addressRAM		0
writeRAM 		1
