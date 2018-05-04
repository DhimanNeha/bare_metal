#include<stdint.h>
volatile unsigned int * const UART0DR = (unsigned int*) 0x101f1000; //address of the UART0 port

//This function will copy data from one location (specified by y) to another
//(specified by x)

int addition(int a,int b){
  return a+b;
}
int entry() {
 int *x = 0x25000;
 int *y = 0x21000;
 int *yin = y;
 int sum;
 while(x <= 0x25028)
 {
  *(y++) = *(x++);
 }
 int (*z)(int ,int);
 z = addition;
 z = yin;
 yin = y;
 x = 0x25030;
 while(x <= 0x25058)
 {
  *(y++) = *(x++);
 }
 sum=z(97,1);
 *UART0DR = sum;
 z = (int (*) ()) (yin);
 sum=z(99,1);
 *UART0DR = sum;
}
