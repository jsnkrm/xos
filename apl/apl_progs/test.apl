decl
	integer status;
	integer a;
	integer b;
	integer c;
	integer wordRead1;
	integer wordRead2;
	integer desc1;
	integer desc2;
	integer desc;
	integer len1;
	integer len2;

enddecl

integer main()
{
	breakpoint;

	a = Create("file1.dat");
	print(a);
	breakpoint;

	a = Create("file2.dat");
	print(a);
	breakpoint;	

	a = Create("file.dat");
	print(a);
	breakpoint;	

	desc1 = Open("file1.dat");
	print(desc1);
	breakpoint;

	desc = Open("file.dat");
	print(desc);
	breakpoint;

	a = 1;
	while( a < 8) do

		b = Write(desc1 , a);
		print(b);
		a = a + 2;
	endwhile;

	desc2 = Open("file2.dat");
	print(desc2);
	breakpoint;


	a = 0;
	while( a < 7) do

		b = Write(desc2 , a);
		print(b);
		a = a + 2;
	
	endwhile;

	breakpoint;

	a = Seek(desc1,0);
	b = Seek(desc2,0);

	breakpoint;

	a = Read(desc1, wordRead1);
	b = Read(desc2, wordRead2);

	len1 = 4;
	len2 = 4;

	while(len1 && len2) do

		if(wordRead1 <= wordRead2) then

			c = Write(desc, wordRead1);
			a = Read(desc1, wordRead1);
			len1 = len1 -1 ;
		
		else
			
			c = Write(desc, wordRead2);
			b = Read(desc2, wordRead2);
			len2 = len2 - 1;

		endif;	

	endwhile;


	while(len2 != 0) do

		c = Write(desc, wordRead2);
		b = Read(desc2, wordRead2);			
		len2 = len2 - 1;

	endwhile;

	while(len1 != 0) do

		c = Write(desc, wordRead1);
		a = Read(desc1, wordRead1);
		len1 = len1 - 1;

	endwhile;

	breakpoint;	

	return 0;
}
