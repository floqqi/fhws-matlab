function Fourierreihe(a,b,n)

x=-2*pi:0.001:2*pi;
fn=zeros(size(x));

for k=0:n
    fn=fn+FK_bk(a,b,k)*sin(k*x)+FK_ak(a,b,k)*cos(k*x);
end

plot(x,fn,'blue-');

% ----------------------------------------------------
% ab hier in Klausur einsetzen
hold on

xAchse_x=[-2*pi-1,2*pi+1];
xAchse_y=[0,0];

yAchse_x=[0,0];
yAchse_y=[-0.1,(a+2*pi*b)/(1+2*pi)+0.1]; % a mit -0.1; +0.1 angef?gt

plot(xAchse_x,xAchse_y,'black-');
plot(yAchse_x,yAchse_y,'black-');

x=-2*pi:0.001:0;
plot(x,(a+b*(x+2*pi))./(1+(x+2*pi)), 'red-'); % f(x)=(a+b*x)./(1+x) mit x=x+2*pi

x=0:0.001:2*pi;
plot(x,(a+b*x)./(1+x), 'red-'); % f(x)=(a+b*x)./(1+x)

title(['Fourierapproximation eines Signals der Ordnung ',int2str(n),...
    ' mit den Parametern a = ',num2str(a),' und b = ', num2str(b)]);
xlabel('Abszissenwerte x');
ylabel('Ordinatenwerte f(x) und fn(x)');
text(2*pi,-0.1,'x-Achse');
text(0.1,(a+2*pi*b)/(1+2*pi)+0.2,'y-Achse');
text(0.1,a,'Gibbsphaenomen');

hold off

% Ausprobieren mit:
% a = 1/4 (vorgegeben)
% b = 4 (vorgegeben)
% n = 20 (frei w?hlen)
