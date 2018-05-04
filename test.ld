SECTIONS
{
. = 0x10000;
.startup . : { startup.o (.text) }
. = ALIGN(8);
. = 0x20000;
.text : { test.o (.text) }
. = ALIGN(8);
. = 0x25000;
.rodata : {* (.rodata) }
. = . + 0x1000;
stack_top = .;
. = ALIGN(8);
. = 0x30000;
.data : { hello.o (.data) }
}
