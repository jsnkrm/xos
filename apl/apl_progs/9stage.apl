decl
	
		integer pid;

enddecl		


integer main()
{
	breakpoint;
	pid = Exec("sam.xsm");
	breakpoint;
	print(pid);
	breakpoint;
	return 0;
}