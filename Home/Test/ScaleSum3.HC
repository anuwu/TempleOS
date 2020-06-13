//Testing out default arguments

I64 ScaleSum3 (I64 scale=1, I64 n1, I64 n2, I64 n3)
{
    return scale * (n1+n2+n3) ;
}

I64 SumScale3 (I64 n1, I64 n2, I64 n3, I64 scale=1)
{
    return scale * (n1+n2+n3) ;
}

U0 Main ()
{
    I64 n1, n2, n3 ;
    n1 = 10 ;
    n2 = 20 ;
    n3 = 30 ;
   
    "Sum with default scale = %d\n", ScaleSum3 (,n1,n2,n3) ;
    "Sum with user scale = %d\n", ScaleSum3(2,n1,n2,n3) ;
    "Sum with default scale = %d\n", SumScale3 (n1,n2,n3) ;
    "Sum with user scale = %d\n", SumScale3 (n1,n2,n3,2) ;
}

Main ;