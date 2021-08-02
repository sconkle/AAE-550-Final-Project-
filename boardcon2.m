function [g,h,grad_g,grad_h] = boardcon2(x)
global a1 a2 a3 a4 a5 a6 a7 a8 a9
a = a9; 

P = 80 * 9.81; %`785 N
L = 1.0668; %m
s = a(1) * 38e6 + a(2) * 35.92e6;  
g(1) = 3*P*L / (2*x(1)*x(2)^2*s) - 1;
g(2) = .2032 / x(1) -1;
g(3) = 1 - .254 / x(1);
g(4) = .005 / x(2) - 1;
g(5) = 1 - .019/x(2);
h = [];

if nargout > 2
    grad_g = [-x(2);-x(1)];
    grad_h = [];
end
end