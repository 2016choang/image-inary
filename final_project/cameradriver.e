copyX		cp 0x800000b2 cameraX
copyY		cp 0x800000b3 cameraY
setScale	cp 0x800000b4 cameraScale
mirror		cp 0x800000b5 cameraMirror
ready		cp 0x800000b0 numOne
respond		cp response 0x800000b1
			bne respond response numOne
reset		cp 0x800000b0 numZero
back		ret return

numOne			1
numZero			0
response		0
cameraX			0
cameraY			0
cameraScale		2
cameraMirror	0