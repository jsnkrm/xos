decl
	integer status;
	integer a;
	integer b;
enddecl
integer main()
{
	status = Create("myfile4.dat");
	print(status);
	breakpoint;
	a = Open("myfile4.dat");
	print(a);
	breakpoint;
	b = Open("myfile4.dat");
	breakpoint;
	return 0;
}
