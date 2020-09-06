
U0 caseStmt1(I64 in)
{
	
	switch [in]
	{
		case 0 :
			"Zero\n" ;
			break ;
		start : 
		"%d : ",in ;
		case :
			"One" ;
			break ;
		case :
			"Two" ;
			break ;
		end :
		" hello\n" ;
		break ;
 	 	case 3...5 :
			"Three-Five\n" ;		
			break ;
		case :
			"Six?\n" ;
			break ;
		default :
			"None\n";
			break;
	}
	
	//"This is = %d\n",in;
	
}


U0 caseStmt2(I64 in)
{
	
	switch (in)
	{
		case 0 :
			"Zero\n" ;
			break ;
		start : 
		"%d : ",in ;
		case :
			"One" ;
			break ;
		case :
			"Two" ;
			break ;
		end :
		" hello\n" ;
		break ;
 	 	case 3...5 :
			"Three-Five\n" ;		
			break ;
		case :
			"Six?\n" ;
			break ;
		default :
			"None\n";
			break;
	}
	
	//"This is = %d\n",in;
	
}


U0 helloWorld ()
{
	I64 i ;
	for (i = 0 ; i <= 6 ; i++) 	// Testing switch[]
	{//If you do 7, without default gives "Invalid opcode" error
	 //If you do 7, with default gives GP error 	
		caseStmt1 (i) ;
	}

	"\n-----------------------------------\n" ;

	for (i = 0 ; i <= 7 ; i++)	//Testing switch()
		caseStmt2 (i) ;

}

helloWorld();
Cd(__DIR__) ;