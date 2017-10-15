decl
	integer a;
	integer b;
	integer c;
	integer x;
	integer i;
	integer j;
	integer temp1;
	integer temp2;
	integer len1;
	integer len2;
	integer len3;
enddecl

integer main()
{	a = Create("array1.dat");
	a = Create("array2.dat");
	a = Create("array3.dat");
	breakpoint;
	//print(a);

	a= Open("array1.dat");
	b= Open("array2.dat");
	x= Open("array3.dat");
	breakpoint;

	c= Write(a,4);
	c= Write(a,'1');
	c= Write(a,'3');
	c= Write(a,'5');
	c= Write(a,'7');

	c= Seek(a,0);

	c= Write(b,5);
	c= Write(b,'2');
	c= Write(b,'4');
	c= Write(b,'6');
	c= Write(b,'8');
	c= Write(b,'10');

	c= Seek(b,0);

	c= Read(a,len1);
	//print (len1);

	c= Read(b,len2);
	//print (len1);

	i = 0;
	j = 0;
	c = Write (x,"");	//Set space in new Array for it's length

	c = Read(a ,temp1);
	c = Read(b ,temp2);

	while (i<len1 && j<len2) do		

		if (temp1 < temp2) then
			c = Write (x,temp1);
			c = Read(a ,temp1);
			i = i + 1;
			//c = Seek  (b,j-1);
		else
			c = Write (x,temp2);
			c = Read(b ,temp2);
			j = j + 1;
			//c = Seek  (a,i-1);
		endif;

		//len3 = len3 + 1;
	endwhile;

	while (i < len1) do
		c = Write (x , temp1);
		c = Read (a ,temp1);
		i = i+1;				
		//len3 = len3 + 1;
	endwhile;

	while (j < len2) do
		c = Write (x , temp2);
		c = Read(b ,temp2);
		j = j+1;
		//len3 = len3 + 1;
	endwhile;

	c = Seek (x,0);
	i = 0;
	len3 = len1 + len2;
	c = Write (x,len3);

	while (i <len3) do
		c = Read(x,temp1);
		print (temp1);
		i = i + 1;
	endwhile;

	breakpoint;
	return 0;
}