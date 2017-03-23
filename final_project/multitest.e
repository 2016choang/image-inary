//Takes input from camera and puts on VGA

start		cp cameraScale numThree			//Sets image size to 640x480
color		cp colorWrite maize				//Sets the color to draw with
Image		call copyX return				//Calls camera driver to get image to VGA memory
touch		call touchscreen touchscreen_ra	//Calls touchscreen driver to get touch coordinates
box			sub vgaXOne touch_x numTwo
			add vgaXTwo touch_x numTwo
			sub vgaYOne touch_y numTwo
			add vgaYTwo touch_y numTwo
vga			cp vgaXwrite vgaXOne			//copies touchscreen X touched coordinate to left X VGA coordinate
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
vgaXOne		0
vgaXTwo		0
vgaYOne		0
vgaYTwo		0



#include cameradriver.e
#include VGAwrite.e
#include touchscreen.e
