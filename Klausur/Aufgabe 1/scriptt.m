%Matrizen Multiplikation mit Abwandlungen
A=input('A eingeben: ');
[n,m]=size(A);
B=input('Matrix B eingeben: ');
[i,j]=size(B);

if(n~=i || i~=m)
    error('Unterschiedliche Zeilen und Spaltenanzahl!');
end

C=zeros(n,m);

for o=1:n
    for p=1:m
        if A(o,p)<B(o,p)
            C(o,p)=1+A(o,p)*B(o,p);
        else
            C(o,p)=(-1/2)*A(o,p)*B(o,p);
        end
    end
end

disp(['Die Ausgabematrix C lautet:']);
C

            
        
        