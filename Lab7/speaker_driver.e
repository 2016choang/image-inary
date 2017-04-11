//
//  speaker_driver.e
//  
//
//  Created by JACOB Rasmussen on 2/22/17.
//
//

//0x80000040	write	bit 0: speaker_command	speaker
//0x80000041	read	bit 0: speaker_response
//0x80000042	write	bits 31-0: speaker_sample

speaker	  	    cp 0x80000042 sample //copys data to speaker sample
				cp 0x80000040 speaker_command_on 

wait_one		cp speaker_response 0x80000041
				bne wait_one speaker_response one 

 				cp 0x80000040 speaker_command_off //turns speaker_command off

wait_two		cp speaker_response 0x80000041 //Reads response to speaker_response
blah      		bne wait_two speaker_response zero 
		
				ret returnSpeaker

speaker_command_on	1
speaker_command_off	0
speaker_response	0
sample	 		0
