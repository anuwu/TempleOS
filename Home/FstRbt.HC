U0 FstRbt ()
{
    CDoc *tmp = DocNew ("C:/reboot.DD") ;
    DocWrite (tmp) ;

    BootRAM ;
}