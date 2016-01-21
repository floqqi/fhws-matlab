[x,y]=meshgrid(-4:0.1:7,-4:0.1:4);

z=-sin(x)+cos(y)-sin(x+y);

%Doppelplot 2D aufsicht und 3D Ansicht
%Wenn kein Plot gefragt einfach weglassen

%subplot(1,2,2)
%surf(x,y,z);

%subplot(1,2,1)
%C=contour(x,y,z,20);
%clabel(C,'manual')

%Werte eintragen
xo=[3/2, 1];
h=0.2;
k_max=100;
Eps=1e-8;
%Funktion definieren
f=@(x)-sin(x(1))+cos(x(2))-sin(x(1)+x(2));
n=2;

E=eye(n);
for k=1:k_max
    %---------------------------------------------
    %Auch hier Plot eventuell lassen oder hinzufuegen
    %hold on;
    %plot(xo(1),xo(2),'black.');
    if k<=5 %k<=8 beim zweiten Beispiel
        %text(xo(1)+0.05,xo(2)+0.05,int2str(k-1));
    end
    %hold off;
    %---------------------------------------------
    z=xo;fo=f(z);
    for j=1:n
        zm=z-h*E(j,:);fm=f(zm);
        zp=z+h*E(j,:);fp=f(zp);
        if fm<=min(fo,fp)
            z=zm;fo=fm;
        end
        if fp<=min(fo,fm)
            z=zp;fo=fp;
        end
    end
    if z==xo
        h=h/2;
        if h<=Eps
            break
        end
    else
        x=z;z=x+(x-xo);fz=f(z);
        if fz<fo
            xo=z;fo=fz;
        else
            xo=x;
        end
    end
end
x_min=xo;f_min=fo;
fprintf('Das Minimum liegt bei x_min = (%.4f,%.4f)\n',x_min);
fprintf('Der Minimalwert von f betr?gt f_min = %.4f\n',f_min);
fprintf('Es wurden %u Iterationen ben?tigt\n',k);