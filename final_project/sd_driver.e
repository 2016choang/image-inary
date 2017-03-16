//0x80000080	write 	bit 0: sd_command 	
//0x80000081	read 	bit 0: sd_response
//0x80000082	write 	bits 0: sd_write
//0x80000083	write 	bits 29-0: sd_address[29:0]
//0x80000084	write 	bits 31-0: sd_data_write
//0x80000085	read 	bits 31-0: sd_data_read

sd		cp 0x80000080 one
wait_one	cp sd_response 0x80000081
		bne wait_one sd_response one

		cp 0x80000083 address
		//bne read 0x80000082 one
//write		cp 0x80000084 data
		//bne one zero		

read		cp data 0x80000085
		
		cp 0x80000080 zero

wait_two	cp sd_response 0x80000081
		bne wait_one sd_response zero
	

one		1
zero		0
sd_response	0
data		0
address		0
