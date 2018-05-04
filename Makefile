OBJCPY = arm-none-eabi-objcopy 
OBJFLAG = -O binary
CC = arm-none-eabi-gcc
AS = arm-none-eabi-as
LD = arm-none-eabi-ld
LDFLAGS = -T test.ld
PFLAG = -mcpu=arm926ej-s
CFLAGS = -c --freestanding

all: test.elf
	$(OBJCPY) $(OBJFLAG)  test.elf test.bin

test.elf: test.o startup.o 
	$(LD) $(LDFLAGS) test.o startup.o -o test.elf
test.o: test.c
	$(CC) $(PFLAG) $(CFLAGS) test.c -o test.o
startup.o: startup.s
	$(AS) $(PFLAG) startup.s -o startup.o
temp.o: temp.s
	$(AS) $(PFLAG) temp.s -o temp.o

hello: hello.o
	$(OBJCPY) $(OBJFLAG) hello.o hello.bin

hello.o: hello.c
	$(CC) $(PFLAG) $(CFLAGS) hello.c -o hello.o

clean:
	rm -rf *.o
	rm *.elf
	rm *.bin
clean_hello:
	rm hello.o
	rm hello.bin
