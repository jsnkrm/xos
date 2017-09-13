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
	//b = Open("myfile.dat");
	//print(b);
	//breakpoint;
	//status = Write(0,"12345678910");
	//print(status);
	//breakpoint;
	c = Seek(0,512);
	print(c);
	breakpoint;
	return 0;
}
