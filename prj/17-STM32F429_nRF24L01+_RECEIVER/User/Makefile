
# Put your stlink folder here so make burn will work.
STLINK=/home/htlu/Works/arm-tools/bin

# Put your source files here (or *.c, etc)
SRCS=main.c system_stm32f4xx.c stm32f4xx_it.c
SRCS += $(STM_COMMON)/Libraries/STM32F4xx_StdPeriph_Driver/src/misc.c
SRCS += $(STM_COMMON)/Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_rcc.c
SRCS += $(STM_COMMON)/Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_gpio.c
SRCS += $(STM_COMMON)/Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_spi.c
SRCS += $(STM_COMMON)/Libraries/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_usart.c
SRCS += $(TM_LIB)/tm_stm32f4_delay.c
SRCS += $(TM_LIB)/tm_stm32f4_disco.c
SRCS += $(TM_LIB)/tm_stm32f4_nrf24l01.c
SRCS += $(TM_LIB)/tm_stm32f4_spi.c
SRCS += $(TM_LIB)/tm_stm32f4_usart.c

# Binaries will be generated with this name (.elf, .bin, .hex, etc)
PROJ_NAME=receiver

# Put your STM32F4 library code directory here
#STM_COMMON=../STM32F4-Discovery_FW_V1.1.0
STM_COMMON=$(PROJ_ROOT)/lib/stm32lib/STM32F4-Discovery_FW_V1.1.0
TM_LIB=$(PROJ_ROOT)/lib/tilen/00-STM32F429_LIBRARIES

# Normally you shouldn't need to change anything below this line!
#######################################################################################

CC=arm-none-eabi-gcc
OBJCOPY=arm-none-eabi-objcopy

DEFS = -D__ASSEMBLY__ -DSTM32F40_41xxx -DUSE_STDPERIPH_DRIVER -DSTM32F4XX -DTM_DISCO_STM32F4_DISCOVERY -DSTM32F407VG

CFLAGS  = -g -O2 -Wall -Tstm32_flash.ld
CFLAGS += -mlittle-endian -mthumb -mcpu=cortex-m4 -mthumb-interwork
CFLAGS += -mfloat-abi=hard -mfpu=fpv4-sp-d16
CFLAGS += $(DEFS)

# Include files from STM libraries
CFLAGS += -I.
CFLAGS += -I$(STM_COMMON)/Utilities/STM32F4-Discovery
CFLAGS += -I$(STM_COMMON)/Libraries/CMSIS/Include -I$(STM_COMMON)/Libraries/CMSIS/ST/STM32F4xx/Include
CFLAGS += -I$(STM_COMMON)/Libraries/STM32F4xx_StdPeriph_Driver/inc
CFLAGS += -I$(TM_LIB)

# add startup file to build
SRCS += $(STM_COMMON)/Libraries/CMSIS/ST/STM32F4xx/Source/Templates/TrueSTUDIO/startup_stm32f4xx.s 
OBJS = $(SRCS:.c=.o)


.PHONY: proj

all: proj

proj: $(PROJ_NAME).elf

$(PROJ_NAME).elf: $(SRCS)
	$(CC) $(CFLAGS) $^ -o $@ 
	$(OBJCOPY) -O ihex $(PROJ_NAME).elf $(PROJ_NAME).hex
	$(OBJCOPY) -O binary $(PROJ_NAME).elf $(PROJ_NAME).bin

clean:
	rm -f *.o $(PROJ_NAME).elf $(PROJ_NAME).hex $(PROJ_NAME).bin

# Flash the STM32F4
burn: proj
	$(STLINK)/st-flash write $(PROJ_NAME).bin 0x8000000
