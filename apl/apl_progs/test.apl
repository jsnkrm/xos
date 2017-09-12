decl
	integer status;
	integer a;
	integer b;
enddecl
integer main()
{
	status = Create("myfile4.dat");
	a = Open("myfile4.dat");
	b = Close(0);
	print(status);
	print(a);
	print(b);	
	return 0;
}
