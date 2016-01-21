function [ x,y,iterations ] = NewtonRaphson( x0,y0,k_max,epsilon,f1,f2,f11,f12,f21,f22 )
for k=0:k_max
    x=x0;y=y0;
    J=[f11(x,y) f12(x,y);f21(x,y) f22(x,y)];
    b=[-f1(x,y);-f2(x,y)];
    h=J\b;
    x0=x0+h(1);
    y0=y0+h(2);
    if max(abs(x0-x),abs(y0-y))<epsilon
        break;
    end
end
fprintf('Es wurden %u Iterationen benoetigt. Die Loesungen: \n',k);
% %.Xf definiert die Nachkommastellen
fprintf('x = %.9f und y = %.9f\n',x0,y0);
    
iterations=k;
end
