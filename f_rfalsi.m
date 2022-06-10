function [c, yc, OUT] = f_rfalsi(fun, a, b, k_max, tol)


ya = feval(fun, a) ;
yb = feval(fun, b) ;

e = b - a;

if (sign(ya) == sign(yb))
	error('Funkcja nie ma r�nych znak�w na ko�cach przedzia�u.')
end

disp('Krok a  b c yc  blad blod_rzczywisty') ;

for ii=1:1:k_max
  e = e / 2;
	c = b - (b - a) / (yb - ya) * yb;
  yc = feval(fun, c) ; % fun1(c) ;

  blad = (1 / 2^ii) * (b - a);
  blad_rzeczywisty = 5.60979 - c;
 	out = [ii a b c yc blad blad_rzeczywisty]; disp(out);
 	OUT(ii,:) = out ;

  if (abs(e) < tol || abs(yc) < tol)

    return;
  end

	if (sign(ya) == sign(yc))
		a = c ;		ya = yc ;
	else
		 b = c;
     yb = yc;
	end

	if (ii >= k_max)
		disp('Nie odnaleziono zera funkcji z zadan? dokladnoscia.')
	end

end

end
