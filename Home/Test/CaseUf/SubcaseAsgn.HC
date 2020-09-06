U0 SubcaseAsgn (I64 i)
{
    I64 j ;

    switch (i)
    {
	case 1 :
	    j=1 ;
	    break ;
	case 2 :
	    j=2;
	    break ;
	start :
	"%d",i ;
	case 3 :
	    j=3;
	    break ;
	case 4 :
	    j=4 ;
	    break ;
	end :
	"End\n" ;
	break ;
	default :
	    j=0;
	    break ;
    }

   "%d\n", j;
}