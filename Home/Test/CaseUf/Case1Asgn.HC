U0 Case1Asgn (I64 i)
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
	case 3 :
	    j=3;
	    break ;
	default :
	    j=4;
	    break ;
    }

   "%d\n", j;
}