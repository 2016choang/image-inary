//Christopher Hoang
//ENGR 100: Section 250
//Lab 7: Touchscreen 
//Date: February 23, 2017
//Touchscreen test

//Write a test program that continuously reads events from the touchscreen controller 
//and displays the maximum x and y coordinates received on the hexdigits.

//Instructions

start     call touchscreen touchscreen_ra
	
	  blt check_y touch_x max_x
          cp max_x touch_x
	  cp 0x80000003 max_x

check_y	  blt start touch_y max_y
          cp max_y touch_y
	  cp 0x80000004 max_y
          be start zero zero

//Variables
max_x -1
max_y -1
zero 0

#include touchscreen.e
