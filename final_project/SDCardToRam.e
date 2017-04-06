//SD card to SDRAM

SDCardToRAM	cp writeRAM one
loop1		cp addressSD i
			cp addressRAM i
			call sd return
			cp dataRAM dataSD
			call sdram return
			add i i one
			bne loop1 i end
			cp i zero
		
i		0
end		6100
X		100
Y		100
col		200
start	100
