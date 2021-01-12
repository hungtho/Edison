# 1 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.c"
# 1 "D:\\07_Working\\Edison\\Edison//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.c"
# 35 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.c"
# 1 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.h" 1
# 36 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.h"
# 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h" 1
# 101 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h"
typedef unsigned char boolean;



typedef unsigned char uint8;



typedef unsigned short uint16;



typedef unsigned long uint32;




typedef unsigned long long uint64;



typedef signed char sint8;



typedef short sint16;




typedef long sint32;






typedef long long sint64;



typedef unsigned long uint8_least;



typedef unsigned long uint16_least;



typedef unsigned long uint32_least;



typedef signed long sint8_least;



typedef signed long sint16_least;



typedef signed long sint32_least;




typedef float float32;




typedef double float64;
# 37 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.h" 2
# 85 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.h"
 typedef sint8 sbyte;
 typedef uint8 byte;

 typedef sint16 sword;
 typedef uint16 word;

 typedef sint32 sdword;
 typedef uint32 dword;

 typedef float32 single;
# 430 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.h"
extern byte U8_CountUp ( byte u8_Count, byte u8_Max );
extern byte U8_CountDown ( byte u8_Count );
extern word U16_CountUp ( word u16_Count, word u16_Max );
extern word U16_CountDown ( word u16_Count );
extern dword U32_CountUp ( dword u32_Count, dword u32_Max );
extern dword U32_CountDown ( dword u32_Count );
extern byte DetectEdgeState ( byte u8_NowValue, byte *u8p_LastValue );
# 36 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.c" 2
# 80 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.c"
byte U8_CountUp ( byte u8_Count, byte u8_Max )
{
 if( u8_Count < u8_Max )
 {
  u8_Count++;
 }

 return ( u8_Count );
}
# 97 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.c"
byte U8_CountDown ( byte u8_Count )
{
 if( u8_Count > ( 0x00U ) )
 {
  u8_Count--;
 }

 return ( u8_Count );
}
# 114 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.c"
word U16_CountUp ( word u16_Count, word u16_Max )
{
 if( u16_Count < u16_Max )
 {
  u16_Count++;
 }

 return ( u16_Count );
}
# 131 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.c"
word U16_CountDown ( word u16_Count )
{
 if( u16_Count > ( 0x0000U ) )
 {
  u16_Count--;
 }

 return ( u16_Count );
}
# 148 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.c"
dword U32_CountUp ( dword u32_Count, dword u32_Max )
{
 if( u32_Count < u32_Max )
 {
  u32_Count++;
 }

 return ( u32_Count );
}
# 165 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.c"
dword U32_CountDown ( dword u32_Count )
{
 if( u32_Count > ( 0x00000000U ) )
 {
  u32_Count--;
 }

 return ( u32_Count );
}
# 182 "0_Src/AppSw/Tricore/BSW_Module/UDS/BSW_Defines.c"
byte DetectEdgeState ( byte u8_NowValue, byte *u8p_LastValue )
{
  byte u8_EdgeSts = ( 0U );

  if( u8_NowValue != ( *u8p_LastValue ) )
  {
    if( u8_NowValue != ( 0x00U ) )
    {
      u8_EdgeSts = ( 2U );
    }
    else
    {
      u8_EdgeSts = ( 1U );
    }

    *u8p_LastValue = u8_NowValue;
  }

  return ( u8_EdgeSts );
}
