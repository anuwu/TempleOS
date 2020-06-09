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
}

U0 main ()
{
	I64 i ;
	for (i = 0 ; i < 3 ; i++)
		caseStmt (i) ;
}

main ;
