function bk=FK_bk(a,b,k)

h=pi/1000;
x=0:h:2*pi;

% y selbst einfuegen (zweiter teil nach bk)
% ./ und .* beachten (da zwei Matrizen)
y=(1/pi)*(a+b*x)./(1+x).*sin(k*x);

bk=h*((y(1)+y(end))/2+sum(y)-y(1)-y(end));
if k==0
    bk=bk/2;
end
