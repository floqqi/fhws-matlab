%Hier vorgegebene Wertevektoren eintragen
%bzw. Werte die gros genug sind
[x,y]=meshgrid(-pi:0.01:pi,-pi:0.01:pi);

%Werte fuer z ausrechnen
z=-sin(x)+cos(y)-sin(x+y);

%Countourplot
%C=contour(x,y,z,20);
%clabel(C,'manual')

%Hier Werte anpassen
xo=[3/2, 1];
h=0.2;
k_max=100;
Eps=1e-8;
%Hier Neue Funktion definieren mit x=x(1) ; y=x(2)
f=@(x)-sin(x(1))+cos(x(2))-sin(x(1)+x(2));

%Aufruf des Verfahren mit(n,x0,h,epsilon,k_max und der Funktion f)
[x_min,f_min,k]=HookesJevesVerfahren_While_Schleife(2,xo,h,Eps,k_max,f);

fprintf('Das Minimum liegt bei x_min = (%.4f,%.4f)\n',x_min);
fprintf('Der Minimalwert von f betraegt f_min = %.4f\n',f_min);
fprintf('Es wurden %u Iterationen benoetigt',k);