xo=[6,-6];
h=0.1;
Eps=1e-4;
k_max=100;
n=2;

f=@(x)x(1)^2-3*x(2)^2*sin(x(2))+x(1)^2/7-6*x(1);
% f=@(x)2*x(1)*x(2)+3*exp((x(1)^2+2*x(2)^2)/4)-5*sin(x(1))*cos(x(2))

[x_min,f_min,k]=HookeJeeves(n,xo,h,Eps,k_max,f);
fprintf('Das Minimum liegt bei: (%.4f, %.4f)\n',x_min);
fprintf('Es waren %u Iterationen notwendig\n', k);
fprintf('Der Minimalwert betraegt f_min = %.4f\n', f_min);
