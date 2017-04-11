//Master file for the whole project

master	cp writeRAM one
		cp cameraScale numThree			//Sets image size to 640x480
		call copyX returnCAM			//Calls camera driver to get image to VGA memory
//____________________________
		cp 0x80000004 one

loop1	cp addressSD i
		cp addressRAM i
		call sd returnSD
		cp dataRAM dataSD
		call sdram returnram
		add i i one
		cp 0x80000004 two
		cp 0x80000003 i
		blt loop1 i end
//_____________________________

		cp time1 0x80000005
wait	sub diff 0x80000005 time1
		blt wait diff thresh
		
		call average returnavg
		cp comp_red red_ave
		cp comp_green green_ave
		cp comp_blue blue_ave
		call compare returncomp
		cp X min_x
		cp Y min_y
		cp start min_x
		add col X num150
		cp 0x80000004 min_x
		cp 0x80000003 min_y
		
//_____________________________

		cp i zero
		cp writeRAM zero
//_____________________________
		//cp 0x80000004 numThree

loop2	cp addressRAM i
		call sdram returnram
		cp colorWrite dataRAM
		cp vgaXwrite X
		cp vgaYwrite Y
		cp vgaXtwoWrite X
		cp vgaYtwoWrite Y
		//cp 0x80000004 numFour
		call vgaWrite returnVGAwrite
		add i i one
		be stop i end
		add X X one
		bne loop2 X col
		cp X start
		add Y Y one
		be loop2 zero zero
//_____________________________

stop	halt

//_____________________________
	
	  ///////////////
	 ///Variables///
	///////////////
//_____________________________

//one		1
//zero		0
num150		150
numThree	3
numFour		4
thresh 		56000
diff		0
time1		0

i				0
return			0
return2			0
returnVGAwrite	0
returnavg		0
returncomp		0
returnram		0
returnSD 		0
testCount		0
returnCAM		0

end		16950
X		0
Y		0
col		0
start	0

//______________________________

#include sd_driver.e
#include sdram_driver.e
#include VGAwrite.e
#include compare.e
#include average.e
#include cameradriver.e
