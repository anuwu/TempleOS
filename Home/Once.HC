#include"C:/Demo/AcctExample/TOS/TOSTheme.HC.Z";



U0 Main ()
{
    I64 res ;
    res = ExePutS2 ("FilesFind(\"C:/reboot.DD\");") ;
    if (!res) 
        TOSTheme() ;
    else
        Del ("C:/reboot.DD");

    DocClear ;
    "Welcome to TempleOS!\n";
    Cd (__DIR__) ;
}

Main ;
