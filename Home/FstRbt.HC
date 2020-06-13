U0 Main ()
{
    CDoc *tmp = DocNew ("C:/reboot.DD") ;
    DocWrite (tmp) ;

    BootRAM ;
}

Main ;