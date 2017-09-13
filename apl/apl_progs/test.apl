decl
	integer status;
	integer a;
	integer b;
	integer c;
enddecl
integer main()
{
	breakpoint;
	a = Create("myfile.dat");
	print(a);
	breakpoint;
	b = Open("myfile.dat");
	print(b);
	breakpoint;
	status = Write(0,"Hello");
	print(status);
	breakpoint;
	status = Write(0,"123456789");
	print(status);
	breakpoint;
	return 0;
}
