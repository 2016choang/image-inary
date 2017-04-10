//SD card to SDRAM

SDCardToRAM	cp writeRAM one
loop1		cp addressSD i
			cp addressRAM i
			call sd return
			cp dataRAM dataSD
			call sdram return
			add i i one
			blt loop1 i end
			cp i zero
			ret returnSDCardToRam
//i		0
end		16950
