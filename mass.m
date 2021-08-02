function [f,grad_f] = mass(x)
L = 1.0668; %m
rho = 345; %kg/m^3
f = L * x(1) * x(2) * rho; %kg
if nargout > 1
    grad_f = [];  
    
end
