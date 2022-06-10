A = [3, -0.1, -0.2;
	  0.1,  7, -0.3;
	   0.3,  -0.2,  10];

b = [7.85; -19.3; 71.4];

tol = 0.00001;
[x, Ar] = f_gauss_seidl(A,b,1,tol)
[x, Ar] = f_gauss_seidl(A,b,2,tol)
[x, Ar] = f_gauss_seidl(A,b,3,tol)
[x, Ar] = f_gauss_seidl(A,b,4,tol)
[x, Ar] = f_gauss_seidl(A,b,10,tol)





