volatile unsigned int * const UART0DR = (unsigned int*) 0x101f1000; //address of the UART0 port
void hello2()
{
 *UART0DR = '*';
}
