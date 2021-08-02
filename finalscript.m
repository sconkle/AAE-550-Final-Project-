clc
clear all

A = [];
b = [];
x0 = [.25;.015];
options = optimoptions(@fmincon,'Algorithm','sqp');
Aeq = [];
beq = [];
lb = [];
ub = [];
xstar = fmincon(@mass,x0,A,b,Aeq,beq,lb,ub,@boardcon,options);
[fx1,fgrad] = mass(xstar);
xstar2 = fmincon(@deflection,x0,A,b,Aeq,beq,lb,ub,@boardcon,options); 
[fx2,fgrad2] = deflection(xstar2);
lowestf = [fx1;fx2];
global a1 a2 a3 a4 a5 a6 a7 a8 a9
a1 = [0;1];
a2 = [.15;.85];
a3 = [.25;.75];
a4 = [.4;.6];
a5 = [.5;.5];
a6 = [.6;.4];
a7 = [.75;.25];
a8 = [.85;.15];
a9 = [1;0];
xstarphi = fmincon(@weightsum1,x0,A,b,Aeq,beq,lb,ub,@boardcon2,options);
fx11 = mass2(xstarphi);
fx21 = deflection2(xstarphi);
finalf1 = [fx11;fx21]
[g,h,grad_g,grad_h] = boardcon2(xstarphi);
T = table(g);
T1 = table(transpose(x0));
T2 = table(transpose(finalf1));
T3 = table(transpose(xstarphi));
filename = 'Final Table.xlsx';
writetable(T,filename,'Sheet',2,'Range','E10','WriteVariableNames',false);
writetable(T1,filename,'Sheet',2,'Range','C10','WriteVariableNames',false);
writetable(T2,filename,'Sheet',2,'Range','J10','WriteVariableNames',false);
writetable(T3,filename,'Sheet',2,'Range','L10','WriteVariableNames',false);
