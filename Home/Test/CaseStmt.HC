
U0 caseStmt(I64 in)
{
	
	switch [in]
	{
		case 0 :
			"Zero\n" ;
			break ;
		start : 
		"%d : ",in ;
		case 1 :
			"One" ;
			break ;
		case 2 :
			"Two" ;
			break ;
		end :
		" hello\n" ;
		break ;		
	}
	
	//"This is = %d\n",in;
	
}


U0 helloWorld ()
{
	I64 i ;
	for (i = 0 ; i < 3 ; i++)
	{
		caseStmt (i) ;
		//"%d\n",i;
	}

}

helloWorld();
