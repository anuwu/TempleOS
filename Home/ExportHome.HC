//Tweaking Home/DoDistro to only export the Home direcory as an ISO file

#define STD_DISTRO_DVD_CFG	"TB\nScale2Mem(2048,0x40000)\nT \n\n\n\n"

U0 ExportHomeISO(U8 *_out_iso_filename)
{
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

  CopyTree("/Home","/Distro/Home");	//Copying only /Home
  RedSeaISO(out_iso_filename,"/Distro","/Distro" BOOT_DIR_KERNEL_BIN_C);

  DelTree("/Distro");
  Free(out_iso_filename);
}

ExportHomeISO("/Export/MyHome.ISO.C");
DocClear ;
"Successfully exported Home directory at %s\n\n","/Export/MyHome.ISO.C" ;
Dir ("/Export") ;
Cd (__DIR__) ;