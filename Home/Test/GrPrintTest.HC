public U0 GrPrint(CDC *dc,I64 x,I64 y,U8 *fmt,...)
{
  U8 *buf=StrPrintJoin(NULL,fmt,argc,argv);//SPrintF() with $LK,"MAlloc",A="MN:MAlloc"$()ed string.
  GrPutS(dc,x,y,buf); //Plot string at x,y pixels. GrPutS is not public.
  Free(buf);
}


GrPrint(gr.dc,(GR_WIDTH-10*FONT_WIDTH)>>1,(GR_HEIGHT-FONT_HEIGHT)>>1,
  	"Score:%4d",10);  //Print score in the center of the scrn.
PressAKey;
DCFill;#include "C:/Home/FstRbt.HC.Z";
