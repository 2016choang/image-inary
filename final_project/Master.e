//Master file for the whole project

//___________________________________

		cp cameraScale numThree			//Sets image size to 640x480
		call copyX return				//Calls camera driver to get image to VGA memory

//Finds location of closest color
//Sets the start X and Y pos based on this and size
		cp X [[XPOS]]
		cp Y [[YPOS]]
//Sets end of column based on this and size
		add col [[XPOS]] X
//Sets location to touch based on this
		sub [[XTOUCHL]] [[XPOS]] X/2
		add [[XTOUCHR]] [[XPOS]] X/2
//Hides picture in appropriate spot
		cp [[XTOUCHL]] [[XPOS]]
		cp [[YTOUCHT]] [[YPOS]]
		call SDRAMToScreen
//Reads touched coords
//Tests touched coords

//___________________________________ Suggestions

//Should probably make a reset button in the bottom right or something to start over whenever we want

//Should make separate files for each function to make it more organized
	//Camera driver call is easy
	//One to get image from SD card to SD Ram 	 		SDCardToRAM.e
	//One to get average color and find closest pixel	average.e, compare.e
	//One that uses this info to add the picture		SDRAMToScreen.e
	//One to get the touched location					
	//One to test the touched location					
	
//___________________________________
	

	  ///////////////
	 ///Variables///
	///////////////
	
one			1
zero		0
return		0


