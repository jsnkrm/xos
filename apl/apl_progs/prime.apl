decl
	integer prime(integer x);
enddecl
integer prime(integer x)
{
	integer a;
	a = 2;
	integer b;
	b = 2;
	integer flag;
	flag = 0;
	while (a <= x) do 
		flag = 1;
		b = 2;
		while (b*b <= a) do
			
			if (a%b == 0) then
				flag = 0;
				break;
			endif;
			
			b = b+1;	 
		endwhile;
		
		if (flag == 1) then
			print(a);
		endif;	
		a = a+1;
	endwhile;	
	return 0;
}
integer main()
{
	breakpoint;
	integer y;
 	y = prime(10);
 	return 0;
	
}
