//SDRAM to VGA screen

RAMtoScreen	cp writeRAM zero
loop2		cp addressRAM i
			call sdram return
			cp colorWrite dataRAM
			cp vgaXwrite X
			cp vgaYwrite Y
			cp vgaXtwoWrite X
			cp vgaYtwoWrite Y
			call vgaWrite return
			add i i one
			be stop i end
			add X X one
			bne loop2 X col
			cp X start
			add Y Y one
			be loop2 zero zero
stop		cp i zero
			
i		0
end		6100
X		100
Y		100
col		200
start	100
