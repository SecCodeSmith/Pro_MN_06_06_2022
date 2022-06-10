function I = f_SimpI(f, xa, xb, n)

  h = (xb-xa)/n;

  for i = 1:n+1
    X(i) = xa + (i-1).* h;
  endfor

  for j = 2:n+1
    T(j-1) = (X(j-1) + X(j)) ./ 2;
  endfor

  Yx = feval(f, (X));
  Yt = feval(f, (T));

  I = h/6 * (2 * sum(Yx(2:n)) + 4 * sum(Yt) + Yx(1) + Yx(n+1));

endfunction

