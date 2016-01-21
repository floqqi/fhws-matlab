function ak=FK_ak(a,b,k)

h=pi/1000;
x=0:h:2*pi;

% y selbst einfuegen (zweiter teil nach ak)
% ./ und .* beachten (da zwei Matrizen)
y=(1/pi)*(a+b*x)./(1+x).*cos(k*x);

ak=h*((y(1)+y(end))/2+sum(y)-y(1)-y(end));
if k==0
    ak=ak/2;
end
