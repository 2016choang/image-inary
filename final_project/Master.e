//Team: Code Busters
//Group Members: Chris Hoang, Jacob Rasmussen, Sach Vaidya, Nicholas Young
//Master file for Image-inary prototype

master	cp writeRAM one
		cp cameraScale numThree			//Sets image size to 640x480
//____________________________

loop1	cp addressSD i
		cp addressRAM i
		call sd returnSD
		cp dataRAM dataSD
		call sdram returnram
		add i i one
		blt loop1 i end
//_____________________________
startMaster		call copyX returnCAM			//Calls camera driver to get image to VGA memory

		cp time1 0x80000005
wait	sub diff 0x80000005 time1
		blt wait diff thresh
		
		call average returnavg
		sr red_ave red_ave sixteen
		sr green_ave green_ave eight
		cp comp_red red_ave
		cp comp_green green_ave
		cp comp_blue blue_ave
		cp colorWrite ave_pixel
		cp vgaXwrite num100
		cp vgaYwrite num100
		add vgaYtwoWrite num100 num10
		add vgaXtwoWrite num100 num10
		call vgaWrite returnVGAwrite 
		call compare returncomp
		cp X min_x
		cp Y min_y
		cp start min_x
		add col X num20
		cp 0x80000001 min_x
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
		be loop3 i end
		add X X one
		bne loop2 X col
		cp X start
		add Y Y one
		be loop2 zero zero
		
loop3	call touchscreen touchscreen_ra	//Calls touchscreen driver to get touch coordinates
		cp colorWrite ave_pixel
		cp 0x80000002 one
		sub leftX X num20		//Sets the edges of the box to draw
		sub bottomY Y num20		//Sets the edges of the box to draw
		blt loop3 X touch_x		//Tests if the touched coordinate is in the target area
		blt loop3 touch_x leftX		//Tests if the touched coordinate is in the target area
		blt loop3 Y touch_y		//Tests if the touched coordinate is in the target area
		blt loop3 touch_y bottomY		//Tests if the touched coordinate is in the target area
		//cp vgaXwrite touch_x			//copies touchscreen X touched coordinate to left X VGA coordinate
		//cp vgaXtwoWrite touch_x			//copies touchscreen X touched coordinate to right X VGA coordinate
		//cp vgaYwrite touch_y			//copies touchscreen Y touched coordinate to top Y VGA coordinate
		//cp vgaYtwoWrite touch_y			//copies touchscreen Y touched coordinate to bottom Y VGA coordinate
speaker2	call speaker returnSpeaker				//calls the speaker
		cpfa sample array soundCount				//copies each part of the sound array to speaker
		add soundCount soundCount one					//adds 1 to the j counter
		bne speaker2 soundCount num19			//loops until sound is done
		cp soundCount zero					//resets the i counter
		add j j one					//adds 1 to the i counter
		bne speaker2 j num100			//tests if it has run the sound a few times
		cp j zero					//Resets the j counter for next loop
		be resetMaster 0x80000000 one
		be loop3 zero zero
		
resetMaster		cp chunkX zero
		cp chunkY zero
		cp min_diff numMax
		cp red_tot zero
		cp green_tot zero
		cp blue_tot zero
		cp count zero
		cp start_address zero
		cp ave_pixel zero
		cp red_ave zero
		cp green_ave zero
		cp blue_ave zero
		cp i zero
		be master zero zero
		
		
		
//_____________________________

stop	cp 0x80000003 Y
		cp 0x80000004 X	
			halt

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
num19		19
num113		113
num100		100
thresh 		56000
diff		0
time1		0
num80		80
num60		60
num20		20
numMax		9999999

i				0
return			0
return2			0
returnVGAwrite	0
returnVGA		0
returnavg		0
returncomp		0
returnram		0
returnSD 		0
testCount		0
returnCAM		0
returnSpeaker	0
returnavg_chunk	0
soundCount		0
j				0
leftX			0
bottomY			0

end		400
X		0
Y		0
col		0
start	0
width2  499
height2 356

array 	0
	363717072
	684428797
	924214714
	1054722904
	1060522280
	940927133
	710078208
	395270728
	33727045
	331804471
	-658103937
	-906590206
	-1047882644
	-1065275049
	-956710970
	-735026858
	-426434300
	-67420806

//______________________________

#include sd_driver.e
#include sdram_driver.e
#include VGAwrite.e
#include VGAread.e
#include compare.e
#include average.e
#include cameradriver.e
#include speaker_driver.e
#include touchscreen.e
#include average_chunk.e
