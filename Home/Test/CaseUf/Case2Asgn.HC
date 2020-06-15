U0 Case2Asgn (I64 i)
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
	
	default:		
	// As demonstrated $LK,"here",A="FI:C:/Home/Test/CaseStmt.HC.Z"$, it doesn't work
	    j=3 ;
	    break ;
    }

    "Done!\n";
}