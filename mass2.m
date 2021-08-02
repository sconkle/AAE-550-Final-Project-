function [f,grad_f] = mass2(x)
global a1 a2 a3 a4 a5 a6 a7 a8 a9
a = a9; 

L = 1.0668; %m
rho = a(1) * 675 + a(2) * 345; %kg/m^3
f = L * x(1) * x(2) * rho; %kg
if nargout > 1
    grad_f = [];  
    
end
