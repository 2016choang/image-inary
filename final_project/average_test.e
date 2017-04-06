test		cp end_address end
			call average return
			cp vgaXwrite one
			cp vgaYwrite one
			cp vgaXtwoWrite end_img
			cp vgaYtwoWrite end_img
			cp colorWrite ave_pixel
			call vgaWrite return





end 	6100
one		1
end_img	479
return 	0

#include average.e
#include VGAwrite.e