//update start and end address before calling 
//ave_pixel updated to the average pixel value at the end 
average 	cp writeRAM zero
		cp ave_pixel zero
		cp addressRAM start_address
		cp current_address start_address
		cp 0x80000001 one
looper		call sdram return2
		//logical and to get rgb values
		and red_temp red_and dataRAM
		and green_temp green_and dataRAM
		and blue_temp blue_and dataRAM
//bitshift red and green so there are no trailing 0s
		sr red_temp red_temp sixteen
		sr green_temp green_temp eight
		//blt break red_temp upper
		//blt break green_temp upper
		//blt break blue_temp upper	
		//blt break lower red_temp
		//blt break lower green_temp
		//blt break lower blue_temp
		//be inc one one		
		
//update totals
break	add red_tot red_tot red_temp
		add green_tot green_tot green_temp
		add blue_tot blue_tot blue_temp
		add count count one
inc		add current_address current_address one
		cp addressRAM current_address 
//loops back to beginning while not equal to size
		blt looper current_address end_address 
		
		cp 0x80000001 four
//totals are now the averages
		cp 0x80000001 count
		cp 0x80000003 count
		div red_ave red_tot count
		cp 0x80000004 blue_ave
		div green_ave green_tot count
		//cp 0x80000004 green_ave
		div blue_ave blue_tot count
		cp 0x80000001 blue_temp
//shifts bits back to original positions
		sl red_ave red_ave sixteen
		sl green_ave green_ave eight

		add ave_pixel ave_pixel red_ave
		add ave_pixel ave_pixel green_ave
		add ave_pixel ave_pixel blue_ave
		
		cp count zero
		cp current_address zero
		ret return

red_and 	16711680 //0b111111110000000000000000 
green_and	65280 //0b000000001111111100000000
blue_and	255 //000000000000000011111111b 
return2	0
blue_temp	0
green_temp	0
red_temp	0
blue_tot	0
green_tot	0
red_tot		0
count		0
sixteen 	16
eight 		8
start_address	0
end_address 6100
current_address 0
ave_pixel	0
red_ave		0
blue_ave	0
green_ave	0
zero		0
two			2
three		3
four 		4
upper		225
lower		30
