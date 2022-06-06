function [f ,c, yc, OUT] = fasi(a, b, k_max, tol)
f=@(x) x.^4 - 8.*x.^3 - 35.*x.^2 + 450.*x - 1001;
ya = f(a) ; % <=> fun(a) ;
yb = f(b) ; % <=> fun(b) ;


disp('Krok		a	 b	  c		yc	blad') ;

for ii=1:1:k_max


	 c = b - (b - a)/(yb -ya) * yb

	yc = f(c); % fun1(c) ;

  blad = (b - a)/2;

 	out = [ii a b c yc blad]; disp(out);
 	OUT(ii,:) = out ;

 	if (abs(yc) < tol)
 		disp(['Metoda fasi zbie�na po ' num2str(ii) 'krokach.'])
 		break ;
 	end


	if (sign(ya) == sign(yc))
		a = b ;		ya = yb ;
	else

		 b = c ; yb = yc;
	end

	if (ii >= k_max)
		disp('Nie odnaleziono zera funkcji z zadan� dokladnoscia.')
	end

end

end
