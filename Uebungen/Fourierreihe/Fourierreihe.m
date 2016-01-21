function Fourierreihe(a,b,n)

if a==0
    error('Bitte a ungleich 0 eingeben');
end

x=-2*pi:0.001:2*pi;
fn=zeros(size(x));

for k=0:n
    fn=fn+FK_bk(a,b,k)*sin(k*x)+FK_ak(a,b,k)*cos(k*x);
end

plot(x,fn,'blue-'); % Fourierreihe(3,-1,50)
% -------------------------------------------------------------------------
hold on;

xAchse_x=[-2*pi-1,2*pi+1];
xAchse_y=[0,0];

yAchse_x=[0,0];
if a>0
    yAchse_y=[b-0.1,a+b+0.1];
else
    yAchse_y=[a+b-0.1;b+0.1];
end

plot(xAchse_x, xAchse_y, 'black-', yAchse_x, yAchse_y, 'black-');

x=-2*pi:0.001:0;
plot(x,a./(x+2*pi+1)+b, 'red-');

x=0:0.001:2*pi;
plot(x,a./(x+1)+b, 'red-');

title(['Fourierapproximation eines Signals der Ordnung ',num2str(n),...
    ' mit den beiden Parametern a = ',num2str(a),' und b = ',num2str(b)]);
xlabel('Abzissenwerte x');
ylabel('Ordinatenwerte fn(x)');
text(0.3,a+b,'Gibbsphaenomen');
text(2*pi+0.1,0.1,'x-Achse');
text(0.1,yAchse_y(1),'y-Achse');

hold off;
