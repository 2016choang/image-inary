//0x80000092	read 	bits 7-0: serial_receive_data[7:0]
//0x800000a0	write 	bit 0: serial_send_command
//0x800000a1	read 	bit 0: serial_send_response
//0x800000a2	write 	bits 7-0: serial_send_data[7:0]

//serial_receive_command, serial_send_response, serial_send_data, serial_send_response


		// copy input to serial_send_data
serial_send	cp 0x800000a2 value 

		// turn on command
		cp 0x800000a0 on
		
read_response	cp response 0x800000a1
		bne read_response response on

		// turn off command
		cp 0x800000a0 off

		ret serial_send_ra
serial_send_ra		 0

on 		1
off 		0
response 	0

