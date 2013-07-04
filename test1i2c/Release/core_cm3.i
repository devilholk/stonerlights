# 1 "../core_cm3.c"
# 1 "<command-line>"
# 1 "../core_cm3.c"
# 24 "../core_cm3.c"
# 1 "/home/m_lovqvist/sat/lib/gcc/arm-none-eabi/4.7.3/include/stdint.h" 1 3 4


# 1 "/home/m_lovqvist/sat/lib/gcc/arm-none-eabi/4.7.3/../../../../arm-none-eabi/include/stdint.h" 1 3 4
# 12 "/home/m_lovqvist/sat/lib/gcc/arm-none-eabi/4.7.3/../../../../arm-none-eabi/include/stdint.h" 3 4
# 1 "/home/m_lovqvist/sat/lib/gcc/arm-none-eabi/4.7.3/../../../../arm-none-eabi/include/_ansi.h" 1 3 4
# 15 "/home/m_lovqvist/sat/lib/gcc/arm-none-eabi/4.7.3/../../../../arm-none-eabi/include/_ansi.h" 3 4
# 1 "/home/m_lovqvist/sat/lib/gcc/arm-none-eabi/4.7.3/../../../../arm-none-eabi/include/newlib.h" 1 3 4
# 16 "/home/m_lovqvist/sat/lib/gcc/arm-none-eabi/4.7.3/../../../../arm-none-eabi/include/_ansi.h" 2 3 4
# 1 "/home/m_lovqvist/sat/lib/gcc/arm-none-eabi/4.7.3/../../../../arm-none-eabi/include/sys/config.h" 1 3 4



# 1 "/home/m_lovqvist/sat/lib/gcc/arm-none-eabi/4.7.3/../../../../arm-none-eabi/include/machine/ieeefp.h" 1 3 4
# 5 "/home/m_lovqvist/sat/lib/gcc/arm-none-eabi/4.7.3/../../../../arm-none-eabi/include/sys/config.h" 2 3 4
# 1 "/home/m_lovqvist/sat/lib/gcc/arm-none-eabi/4.7.3/../../../../arm-none-eabi/include/sys/features.h" 1 3 4
# 6 "/home/m_lovqvist/sat/lib/gcc/arm-none-eabi/4.7.3/../../../../arm-none-eabi/include/sys/config.h" 2 3 4
# 17 "/home/m_lovqvist/sat/lib/gcc/arm-none-eabi/4.7.3/../../../../arm-none-eabi/include/_ansi.h" 2 3 4
# 13 "/home/m_lovqvist/sat/lib/gcc/arm-none-eabi/4.7.3/../../../../arm-none-eabi/include/stdint.h" 2 3 4
# 41 "/home/m_lovqvist/sat/lib/gcc/arm-none-eabi/4.7.3/../../../../arm-none-eabi/include/stdint.h" 3 4
typedef signed char int8_t ;
typedef unsigned char uint8_t ;




typedef signed char int_least8_t;
typedef unsigned char uint_least8_t;




typedef signed short int16_t;
typedef unsigned short uint16_t;
# 67 "/home/m_lovqvist/sat/lib/gcc/arm-none-eabi/4.7.3/../../../../arm-none-eabi/include/stdint.h" 3 4
typedef int16_t int_least16_t;
typedef uint16_t uint_least16_t;
# 79 "/home/m_lovqvist/sat/lib/gcc/arm-none-eabi/4.7.3/../../../../arm-none-eabi/include/stdint.h" 3 4
typedef signed long int32_t;
typedef unsigned long uint32_t;
# 97 "/home/m_lovqvist/sat/lib/gcc/arm-none-eabi/4.7.3/../../../../arm-none-eabi/include/stdint.h" 3 4
typedef int32_t int_least32_t;
typedef uint32_t uint_least32_t;
# 119 "/home/m_lovqvist/sat/lib/gcc/arm-none-eabi/4.7.3/../../../../arm-none-eabi/include/stdint.h" 3 4
typedef signed long long int64_t;
typedef unsigned long long uint64_t;
# 129 "/home/m_lovqvist/sat/lib/gcc/arm-none-eabi/4.7.3/../../../../arm-none-eabi/include/stdint.h" 3 4
typedef int64_t int_least64_t;
typedef uint64_t uint_least64_t;
# 159 "/home/m_lovqvist/sat/lib/gcc/arm-none-eabi/4.7.3/../../../../arm-none-eabi/include/stdint.h" 3 4
  typedef signed int int_fast8_t;
  typedef unsigned int uint_fast8_t;




  typedef signed int int_fast16_t;
  typedef unsigned int uint_fast16_t;




  typedef signed int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 213 "/home/m_lovqvist/sat/lib/gcc/arm-none-eabi/4.7.3/../../../../arm-none-eabi/include/stdint.h" 3 4
  typedef int_least64_t int_fast64_t;
  typedef uint_least64_t uint_fast64_t;







  typedef long long int intmax_t;
# 231 "/home/m_lovqvist/sat/lib/gcc/arm-none-eabi/4.7.3/../../../../arm-none-eabi/include/stdint.h" 3 4
  typedef long long unsigned int uintmax_t;
# 243 "/home/m_lovqvist/sat/lib/gcc/arm-none-eabi/4.7.3/../../../../arm-none-eabi/include/stdint.h" 3 4
typedef signed int intptr_t;
typedef unsigned int uintptr_t;
# 4 "/home/m_lovqvist/sat/lib/gcc/arm-none-eabi/4.7.3/include/stdint.h" 2 3 4
# 25 "../core_cm3.c" 2
# 442 "../core_cm3.c"
uint32_t __get_PSP(void) __attribute__( ( naked ) );
uint32_t __get_PSP(void)
{
  uint32_t result=0;

  __asm volatile ("MRS %0, psp\n\t"
                  "MOV r0, %0 \n\t"
                  "BX  lr     \n\t" : "=r" (result) );
  return(result);
}
# 461 "../core_cm3.c"
void __set_PSP(uint32_t topOfProcStack) __attribute__( ( naked ) );
void __set_PSP(uint32_t topOfProcStack)
{
  __asm volatile ("MSR psp, %0\n\t"
                  "BX  lr     \n\t" : : "r" (topOfProcStack) );
}
# 476 "../core_cm3.c"
uint32_t __get_MSP(void) __attribute__( ( naked ) );
uint32_t __get_MSP(void)
{
  uint32_t result=0;

  __asm volatile ("MRS %0, msp\n\t"
                  "MOV r0, %0 \n\t"
                  "BX  lr     \n\t" : "=r" (result) );
  return(result);
}
# 495 "../core_cm3.c"
void __set_MSP(uint32_t topOfMainStack) __attribute__( ( naked ) );
void __set_MSP(uint32_t topOfMainStack)
{
  __asm volatile ("MSR msp, %0\n\t"
                  "BX  lr     \n\t" : : "r" (topOfMainStack) );
}
# 509 "../core_cm3.c"
uint32_t __get_BASEPRI(void)
{
  uint32_t result=0;

  __asm volatile ("MRS %0, basepri_max" : "=r" (result) );
  return(result);
}
# 524 "../core_cm3.c"
void __set_BASEPRI(uint32_t value)
{
  __asm volatile ("MSR basepri, %0" : : "r" (value) );
}
# 536 "../core_cm3.c"
uint32_t __get_PRIMASK(void)
{
  uint32_t result=0;

  __asm volatile ("MRS %0, primask" : "=r" (result) );
  return(result);
}
# 551 "../core_cm3.c"
void __set_PRIMASK(uint32_t priMask)
{
  __asm volatile ("MSR primask, %0" : : "r" (priMask) );
}
# 563 "../core_cm3.c"
uint32_t __get_FAULTMASK(void)
{
  uint32_t result=0;

  __asm volatile ("MRS %0, faultmask" : "=r" (result) );
  return(result);
}
# 578 "../core_cm3.c"
void __set_FAULTMASK(uint32_t faultMask)
{
  __asm volatile ("MSR faultmask, %0" : : "r" (faultMask) );
}
# 590 "../core_cm3.c"
uint32_t __get_CONTROL(void)
{
  uint32_t result=0;

  __asm volatile ("MRS %0, control" : "=r" (result) );
  return(result);
}
# 605 "../core_cm3.c"
void __set_CONTROL(uint32_t control)
{
  __asm volatile ("MSR control, %0" : : "r" (control) );
}
# 619 "../core_cm3.c"
uint32_t __REV(uint32_t value)
{
  uint32_t result=0;

  __asm volatile ("rev %0, %1" : "=r" (result) : "r" (value) );
  return(result);
}
# 635 "../core_cm3.c"
uint32_t __REV16(uint16_t value)
{
  uint32_t result=0;

  __asm volatile ("rev16 %0, %1" : "=r" (result) : "r" (value) );
  return(result);
}
# 651 "../core_cm3.c"
int32_t __REVSH(int16_t value)
{
  uint32_t result=0;

  __asm volatile ("revsh %0, %1" : "=r" (result) : "r" (value) );
  return(result);
}
# 667 "../core_cm3.c"
uint32_t __RBIT(uint32_t value)
{
  uint32_t result=0;

   __asm volatile ("rbit %0, %1" : "=r" (result) : "r" (value) );
   return(result);
}
# 683 "../core_cm3.c"
uint8_t __LDREXB(uint8_t *addr)
{
    uint8_t result=0;

   __asm volatile ("ldrexb %0, [%1]" : "=r" (result) : "r" (addr) );
   return(result);
}
# 699 "../core_cm3.c"
uint16_t __LDREXH(uint16_t *addr)
{
    uint16_t result=0;

   __asm volatile ("ldrexh %0, [%1]" : "=r" (result) : "r" (addr) );
   return(result);
}
# 715 "../core_cm3.c"
uint32_t __LDREXW(uint32_t *addr)
{
    uint32_t result=0;

   __asm volatile ("ldrex %0, [%1]" : "=r" (result) : "r" (addr) );
   return(result);
}
# 732 "../core_cm3.c"
uint32_t __STREXB(uint8_t value, uint8_t *addr)
{
   uint32_t result=0;

   __asm volatile ("strexb %0, %2, [%1]" : "=r" (result) : "r" (addr), "r" (value) );
   return(result);
}
# 749 "../core_cm3.c"
uint32_t __STREXH(uint16_t value, uint16_t *addr)
{
   uint32_t result=0;

   __asm volatile ("strexh %0, %2, [%1]" : "=r" (result) : "r" (addr), "r" (value) );
   return(result);
}
# 766 "../core_cm3.c"
uint32_t __STREXW(uint32_t value, uint32_t *addr)
{
   uint32_t result=0;

   __asm volatile ("strex %0, %2, [%1]" : "=r" (result) : "r" (addr), "r" (value) );
   return(result);
}
