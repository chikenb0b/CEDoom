NAME = CEDoom
DESCRIPTION = "Doom for a ti 84 plus ce based from a port of doom for the gba"

ARCH	:=	-mthumb

CFLAGS	:=	 -DF_CPU=48000000UL -g -Wall -O3 -fgcse-after-reload -gdwarf-4\
                -mcpu=arm7tdmi -mtune=arm7tdmi
		#-fpermissive\
                -DGBA\
		$(ARCH)

CFLAGS	+=	$(INCLUDE)

CXXFLAGS	:=	$(CFLAGS) -fno-rtti -fno-exceptions

ASFLAGS	:=	-g $(ARCH)
LDFLAGS	=	-g $(ARCH) -Wl,-Map,$(notdir $*.map

include $(shell cedev-config --makefile)