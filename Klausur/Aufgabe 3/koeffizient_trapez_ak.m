function ak = koeffizient_trapez_ak(a,b,k)
%KOEFFIZIENT_AK ak mit Trapezverfahren

h=pi/1000; % m muss gerade sein
x=0:h:2*pi; % Bereich der Funktion in der sie definiert ist. In die Abbildung schaun!
y=(1/pi)*(a*tan(x./8)+b).*cos(k*x); % Hier Funktion eintragen
ak=h*((y(1)+y(end))/2+sum(y)-y(1)-y(end)); % Trapezverfahren anwenden
if k==0 % Wert halbieren wenn erster Koeffizient
    ak=ak/2;
end

end

