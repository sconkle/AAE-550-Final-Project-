function phi = weightsum1(x)
global a1 a2 a3 a4 a5 a6 a7 a8 a9
a = a9; 

%Constant Variables

L = 1.0668; %m
P = 80 * 9.81; %`785 N
Izz = x(1) * x(2)^2 /12;

% Composite Variables
E = a(1) * 11.31e9 + a(2) * 15.03e9; %Pa
rho = a(1) * 675 + a(2) * 345; %kg/m^3
 
phi1 =  .5 * ((L * x(1) * x(2) * rho -.9810) / .9810)^2;
phi2 =  .5 * ((P / (24 * E * Izz) *...
        ((L/2)^4 - 4*L^3 * L /2 + 3*L^4) - .0103) / .0103)^2;
phi = phi1 + phi2;
end
