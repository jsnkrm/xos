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
	status = Write(0,"12345678910");
	print(status);
	breakpoint;
	c = Seek(status,0);
	print(c);
	breakpoint;
	a = Read(0,b);
	print(a);
	print(b);
	breakpoint;
	return 0;
}
