//0x80000080	write 	bit 0: sd_command 	
//0x80000081	read 	bit 0: sd_response
//0x80000082	write 	bits 0: sd_write
//0x80000083	write 	bits 29-0: sd_address[29:0]
//0x80000084	write 	bits 31-0: sd_data_write
//0x80000085	read 	bits 31-0: sd_data_read

sd		cp 0x80000083 address // address
		cp 0x80000082 zero    // write
		cp 0x80000080 one // command

wait_one	cp sd_response 0x80000081
		bne wait_one sd_response one
	
read		cp data 0x80000085
		
		cp 0x80000080 zero

wait_two	cp sd_response 0x80000081
		bne wait_two sd_response zero
					
		ret return

one		1
zero		0
sd_response	0
data		0
address		0
