%% Simpson-Verfahren
function ak=koeffizient_simpson_ak(a,b,k)
h=2*pi/1000;
%Nenner muss gerade sein!! (hier 1000)
x=0:h:2*pi;
y=(1/pi)*(a*tan(x./8)+b).*cos(k*x); % Hier Funktion eintragen.Punktoperation beachten!
%Zunaechst wird S=y1+2y2+2y3+...+2ym+ym+1 berechnet:
S=2*sum(y)-y(1)-y(end);
%Zu S nun noch 2y2,2y4,2y6,...,2ym hinzuaddieren.
%Ergebnis dann: S = y1 + 4y2 + 2y3 + 4y4 + 2y5 +...+ 4ym + ym+1
for j=2:2:1000
    S=S+2*y(j);
end
Integral=S*h/3;
if k==0
    ak=Integral/2;
else
    ak=Integral;
end

