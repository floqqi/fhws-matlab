function bk=koeffizient_simpson_bk(a,b,k)
h=2*pi/1000;
%Nenner muss gerade sein!! (hier 1000)
x=0:h:2*pi;
y=(1/pi)*(a*tan(x./8)+b).*sin(k*x); % Hier Funktion eintragen. %Punktoperation beachten!
S=2*sum(y)-y(1)-y(end);
%Vorgehensweise wie bei ak
for j=2:2:1000
    S=S+2*y(j);
end
bk=S*h/3;
