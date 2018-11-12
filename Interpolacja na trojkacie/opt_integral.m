function [res] = opt_integral(x1,y1,x2,y2,x3,y3,n,f)

%wektor (x1->x2)/n
v12=[(x2-x1); (y2-y1)/n];
%wektor (x1->x3)/n
v13=[(x3-x1)/n; (y3-y1)/n];
%wektor (x2->x3)/n
v23=[(x3-x2)/n; (y3-y2)/n];

res=0;

for i=1:n
    
    %wiersz pierwszy
    if i==1
        %wyliczenie wspolrzednych trojkata w pierwszym wierszu
        x2=x1+v12(1);
        y2=x1+v12(2);
        x3=x1+v13(1);
        y3=y1+v13(2);
        %wyliczenie srodkow
        x(1)=(x1+x2)/2;
        y(1)=(y1+y2)/2;
        x(2)=(x1+x3)/2;
        y(2)=(y1+y3)/2;
        x(3)=(x2+x3)/2;
        y(3)=(y2+y3)/2;
        %dodanie wartosci
        if n==1
        res=res+f(x(1),y(1))+f(x(2),y(2))+f(x(3),y(3));
        else
        res=res+f(x(1),y(1))+f(x(2),y(2))+2*f(x(3),y(3));
        end
    %wiersz inny niz pierwszy   
    else
        %przesuniecie sie do kolejnego wiersza
        x=x+v12(1);
        y=y+v12(2);
        %wyliczenie wartosci z danego wiersza
        if i==n
            res=res+calculate_last_row(x,y,v23,i,f);
        else
            res=res+calculate_row(x,y,v23,i,f);
        end
    end
end