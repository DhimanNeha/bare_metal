.global _Start

_Start:
LDR sp, =stack_top
BL entry
B .
