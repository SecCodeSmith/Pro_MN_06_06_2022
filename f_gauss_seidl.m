function [x,kk] = f_gauss_seidl(A,b, k_max, tol)



[n,m] = size(A) ;

if (n~=m), error('Macierz A musi byc kwadratowa'); end%if

% utworzenie macierzy rozszerzonej
 Ar = [A, b];

% inicjalizacja wektora szukanych
x = zeros(n, 1) ;

for kk=1:n
    %TODO nale�y podzieli� ii-ty wiersz macierz rozszerzonej przez ii-ty
    %element g��wnej przek�tnej macierzy Ar

    Ar(kk,:) = Ar(kk,:) /  Ar(kk,kk);

end

x = Ar(:,end) ;
%D = -Ar(:, 1:n) .* ~diag(ones(1,n)) ;
%C = Ar(:,n+1);

D=diag(ones(1,n)).*diag(A);
L=tril(A).*~diag(ones(1,n));
U=triu(A).*~diag(ones(1,n));

for kk=1:k_max
    %x = C+D*x;
    x = (D + L)^-1 * b - (D + L)^-1 * U * x;
  new_b = A * x;
  sum=0;
  for i=1:rows(b)
      sum=sum + abs(new_b(i) - b(i));
  endfor

    if sum < tol
        break
    end
end

end%function
