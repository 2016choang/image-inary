//Christopher Hoang
//ENGR 100: Section 250
//Lab 7: Touchscreen 
//Date: February 23, 2017
//Touchscreen Driver

//0x800000e0	write	bit 0: touch_command
//0x800000e1	read	bit 0: touch_response
//0x800000e2	read	bits 9-0: touch_x
//0x800000e3	read	bits 8-0: touch_y
//0x800000e4	read	bit 0: touch_pressed

//Instructions

touchscreen cp 0x800000e0 touch_command_on //Sets touch_command to 1 (touch_command_on)

wait1  cp touch_response 0x800000e1 //Reads response to touch_response 
      bne wait1 touch_response touch_response_on //Waits until tech_response equals 1
      			 
      cp touch_x 0x800000e2 //Copies 10-bit x-coordinate to touch_x
      cp touch_y 0x800000e3 //Copies 9-bit y-coordinate to touch_y

      cp touch_pressed 0x800000e4 //Copies 1-bit "pressed" state to touch_pressed
      cp 0x80000001 touch_pressed 


      cp 0x800000e0 touch_command_off //Sets touch_command back to 0 (touch_command_off)
wait2 cp touch_response 0x800000e1 //Reads response to touch_response 
      bne wait2 touch_response touch_response_off //Waits until tech_response equals 0

      ret touchscreen_ra //Returns to touch_ret


//Variables 
touch_command_off 0
touch_command_on 1

touch_response 0 
touch_response_off 0
touch_response_on 1

touch_pressed 0 
touch_x -1
touch_y -1

touchscreen_ra 0 

