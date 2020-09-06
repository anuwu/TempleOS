Cd (__DIR__) ;

U0 Main ()
{
    CDoc *tmp = DocNew ("reboot.DD") ;
    DocWrite (tmp) ;

    I64 res ;
    res=ExePutS2 ("FilesFind(\"C:/Home/Test/reboot.DD\");") ;
    if (!res)
	"File not found\n" ;
    else
	"File found\n" ;
}

Main () ;
