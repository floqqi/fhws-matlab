%syms x y
%f1=@(x,y)8*x*y-x^2*exp(x);
%f2=@(x,y)y+x^2.*y-1;

%syms x y
%f11=@(x,y)diff(f1,x);
%f12=@(x,y)diff(f1,y);

%syms x y
%f21=@(x,y)diff(f2,x);
%f22=@(x,y)diff(f2,y);

f1=@(x,y)8*x*y-x^2*exp(x);
f2=@(x,y)y+x^2.*y-1;
f11=@(x,y)8*y - x^2.*exp(x) - 2*x*exp(x);
f12=@(x,y)8*x;
f21=@(x,y)2*x*y;
f22=@(x,y)x^2 + 1;

x0=2.3;
y0=0.9;
k_max=20;
epsilon=10^(-8);

NewtonRaphson(x0,y0,k_max,epsilon,f1,f2,f11,f12,f21,f22);
