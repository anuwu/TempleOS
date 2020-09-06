U0 IsSorted (...)
{
    Bool srt=TRUE ;
    I64 i ;

    for (i=1;i<argc;i++)
    { 
	if (argv[i] < argv[i-1])
	{
	    "Not sorted\n" ;
	    return ;
	}
    }

    "Sorted\n" ;
}