function bk=FK_bk(a,b,k)
h=pi/1000;
x=0:h:2*pi;
y=(1/pi)*(a./(x+1)+b).*sin(k*x);
bk=h*((y(1)+y(end))/2+sum(y)-y(1)-y(end));
