U0 caseStmt (I64 in)
{
	switch [in]
	{
		case 0 :
			"Zero\n" ;
			break ;
		start : "%d : ", in ;
		case 1 :
			"One\n" ;
			break ;
		case 2 :
			"Two\n" ;
			break ;
		end : break ;
	}
}

U0 helloWorld ()
{
	"Hello World, from TempleOS\n" ;
	I64 i ;
	for (i = 0 ; i < 3 ; i++)
		caseStmt (i) ;
}