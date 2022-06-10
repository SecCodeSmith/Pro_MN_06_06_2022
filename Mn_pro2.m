f = @(x) (8 + 4.*cos(x));
a = 0;
b = pi/2;

quad(f, a, b)
quadl(f, a, b)

trapI_one = f_trapI(f, a, b, 1)
trapI_two = f_trapI(f, a, b, 2)
trapI_four = f_trapI(f, a, b, 4)
SimpI_one = f_SimpI(f, a, b, 1)
SimpI_four = f_SimpI(f, a, b, 4)


