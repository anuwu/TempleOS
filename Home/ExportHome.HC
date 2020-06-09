//Tweaking Home/DoDistro to only export the Home direcory as an ISO file

#define STD_DISTRO_DVD_CFG	"TB\nScale2Mem(2048,0x40000)\nT \n\n\n\n"

U0 MakeMyISO(U8 *_out_iso_filename)
{//Does everything with current drive.
//If you have not recompiled $FG,2$Kernel$FG$ and defined your CD/DVD drive, use $LK,"Mount",A="MN:Mount"$.
  U8 *out_iso_filename=FileNameAbs(_out_iso_filename);
  if (!DrvIsWritable) {
    "Drive must be writable.  Install on Hard drive, first.\n";
    return;
  }
  DelTree("/Distro");
  Del(out_iso_filename);

  DirMk("/Distro");
  In(STD_DISTRO_DVD_CFG);
  BootDVDIns;

  CopyTree("/Home","/Distro/Home");
  RedSeaISO(out_iso_filename,"/Distro","/Distro" BOOT_DIR_KERNEL_BIN_C);

  DelTree("/Distro");
  Free(out_iso_filename);
}

MakeMyISO("/Export/TempleOS-Home.ISO");
Move ("/Export/TempleOS-Home.ISO.C", "/Export/TempleOS-Home.ISO") ;
DocClear ;
"Successfully exported Home directory at %s\n\n","/Export/TempleOS-Home.ISO" ;
Dir ("/Export") ;
Cd (__DIR__) ;
// Study my account examples $LK,"Cfg Strs",A="FL:::/Demo/AcctExample/TOS/TOSCfg.HC,1"$, $LK,"Update Funs",A="FL:::/Demo/AcctExample/TOS/TOSDistro.HC,1"$.
