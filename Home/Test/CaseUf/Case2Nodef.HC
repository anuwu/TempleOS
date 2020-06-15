U0 Case2Nodef (I64 i)
{
    // Case 1, 2 and 3 (???) work.
    // Case 4 leads to an error

    I64 j ;
    switch [i]
    {
	case 1 :
	    j=1 ;
	    break ;
 
	case 2 :
	    j=2 ;
	    break ;
    }

    "Done!\n";
}