integer main()
{
	integer a;
	a = 0;
	while(a < 10) do

		print(a);

		a = a + 1;

	endwhile;

	a = Exec("prime.xsm");

	return 0;
}