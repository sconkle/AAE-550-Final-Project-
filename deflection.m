function [f,grad_f] = deflection(x)
P = 80 * 9.81; %`785 N
E = 12.6e9; %Pa
Izz = x(1) * x(2)^2 /12; 
L = 1.0668; %m
%f = P / (24 * E * Izz) * ((L/2)^4 - 4*L^3 * L /2 + 3*L^4);
f = L^3 * P*50 / ( 48* Izz* E);
if nargout > 1
    grad_f = [];  
    

end