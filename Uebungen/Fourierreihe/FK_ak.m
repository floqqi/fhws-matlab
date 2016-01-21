function ak=FK_ak(a,b,k)
h=pi/1000;
x=0:h:2*pi;
y=(1/pi)*(a./(x+1)+b).*cos(k*x);
ak=h*((y(1)+y(end))/2+sum(y)-y(1)-y(end));
if k==0
    ak=ak/2;
end
