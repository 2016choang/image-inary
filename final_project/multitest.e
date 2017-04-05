//Takes input from camera and puts on VGA touchscreen
//Allows you to write on the touchscreen
//Plays a sound if (the first time) you touch a specific area

start		cp cameraScale numThree			//Sets image size to 640x480
color		cp colorWrite maize				//Sets the color to draw with
Image		call copyX return				//Calls camera driver to get image to VGA memory
touch		call touchscreen touchscreen_ra	//Calls touchscreen driver to get touch coordinates
box			sub vgaXOne touch_x numTwo		//Sets the edges of the box to draw
			add vgaXTwo touch_x numTwo		//Sets the edges of the box to draw
			sub vgaYOne touch_y numTwo		//Sets the edges of the box to draw
			add vgaYTwo touch_y numTwo		//Sets the edges of the box to draw
			blt draw num330test touch_x		//Tests if the touched coordinate is in the target area
			blt draw touch_x num310test		//Tests if the touched coordinate is in the target area
			blt draw num250test touch_y		//Tests if the touched coordinate is in the target area
			blt draw touch_y num230test		//Tests if the touched coordinate is in the target area
			//be draw touched numOne		would only allow us to hit it once
			//cp touched numOne				would basically set a bool to true
speaker2	call speaker return				//calls the speaker
			cpfa sample array i				//copies each part of the sound array to speaker
			add i i numOne					//adds 1 to the j counter
			bne speaker2 i num19			//loops until sound is done
			cp i numZero					//resets the i counter
			add j j numOne					//adds 1 to the i counter
			bne speaker2 j num100			//tests if it has run the sound a few times
			cp j numZero					//Resets the j counter for next loop
draw		cp vgaXwrite vgaXOne			//copies touchscreen X touched coordinate to left X VGA coordinate
			cp vgaXtwoWrite vgaXTwo			//copies touchscreen X touched coordinate to right X VGA coordinate
			cp vgaYwrite vgaYOne			//copies touchscreen Y touched coordinate to top Y VGA coordinate
			cp vgaYtwoWrite vgaYTwo			//copies touchscreen Y touched coordinate to bottom Y VGA coordinate
write		call vgaWrite return			//Calls the VGA write driver with the coordinates specified
restart		be touch 0 0					//Loops back to call the touchscreen again
end			halt							//Never actually gets here, but here is a halt statement just incase

numThree 	3
return 		0
maize		16776960
numTwo		2
num19		19
num100		100
i			0
j			0
vgaXOne		0
vgaXTwo		0
vgaYOne		0
vgaYTwo		0
num330test	330
num230test	230
num310test	310
num250test	250

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

#include cameradriver.e
#include VGAwrite.e
#include touchscreen.e
#include speaker_driver.e
