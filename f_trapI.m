function I = f_trapI(f, xa, xb, n)
  h = (xb-xa)/n;
  for ii = 1:n+1
    X(ii) = xa + (ii-1).* h;
    Y(ii) = feval(f, X(ii));
  end
  I = h .* (sum(Y(2:n)) + (Y(1) + Y(n+1)) ./ 2);
end

