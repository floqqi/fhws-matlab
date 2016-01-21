function [] = Fourier( a,b,n )
%FOURIER Summary of this function goes here
%   Detailed explanation goes here

%x festlegen
x=-2*pi:0.001:2*pi;
fn=zeros(size(x));

%fn bestimmen
%for k=0:n
%    fn=fn+koeffizient_trapez_ak(a,b,k)*cos(k*x)+koeffizient_trapez_bk(a,b,k)*sin(k*x);
%end

%fn bestimmen
for k=0:n
    fn=fn+koeffizient_simpson_ak(a,b,k)*cos(k*x)+koeffizient_simpson_bk(a,b,k)*sin(k*x);
end

% Fourierreihe plotten
plot(x,fn,'blue-');

hold on
x=-2*pi:0.001:0;
% Funktion selbst jeweils in ihrem definierten Bereich plotten
plot(x,a*tan((x+2*pi)./8)+b,'red-');

% Eventuell mehrmals noetig
x=0:0.001:2*pi;
plot(x,a*tan(x./8)+b,'red-');

%Weitere Befehle fuer Beschriftungen usw.
xAchse1=[-2*pi-1, 2*pi+1]; 
xAchse2=[b,b];

plot(xAchse1,xAchse2,'black');

yAchse1=[0,0];
yAchse2=[abs(a+b*2)+1,-3];

plot(yAchse1,yAchse2,'black');

title(['Fourierapproximation eines tangensialen Signals der Ordnung ',...
    num2str(n),' mit Oeffnungsbreite ',num2str(a), ...
    ' und y-Achsen-Abschnitt ',num2str(b)])

xlabel('X')
ylabel('f(x) und fn(x)')
text(2*pi+1.2,b-0.5,'x-Achse')
text(0, a, 'y-Achse')
text(0, a+b, 'Gibbsphaenomen')
text(-2*pi,b,'-2Pi')
text(-pi,b,'-Pi')
text(pi,b,'Pi')
text(2*pi,b,'2Pi')
legend('fn(x)','f(x)',1), legend('boxon')

hold off

end