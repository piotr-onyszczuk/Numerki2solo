function [res] = values_in_points(x0,y0,x1,y1,x2,y2,n,f)

%wektor (x0->x1)/n
v01=[(x1-x0); (y1-y0)/n];
%wektor (x0->x2)/n
v02=[(x2-x0)/n; (y2-y0)/n];
%wektor (x1->x2)/n
v12=[(x2-x1)/n; (y2-y1)/n];

res=0;

for i=1:n
    
    %wiersz pierwszy
    if i==1
        %wyliczenie wspolrzednych trojkata w pierwszym wierszu
        x1=x0+v01(1);
        y1=x0+v01(2);
        x2=x0+v02(1);
        y2=y0+v02(2);
        %wyliczenie srodkow
        x(1)=(x0+x1)/2;
        y(1)=(y0+y1)/2;
        x(2)=(x0+x2)/2;
        y(2)=(y0+y2)/2;
        x(3)=(x1+x2)/2;
        y(3)=(y1+y2)/2;
        xtmp=x;
        ytmp=y;
        %dodanie wartosci
        res=res+f(x(1),y(1))+f(x(2),y(2))+f(x(3),y(3));
    %wiersz inny niz pierwszy   
    else
        %przesuniecie sie do kolejnego wiersza
        x=xtmp+v01(1);
        y=ytmp+v01(2);
        xtmp=x;
        ytmp=y;
        %wyliczenie wartosci z danego wiersza
        if i==n
            res=res+calculate_last_row(x,y,v12,i,f);
        else
            res=res+calculate_row(x,y,v12,i,f);
        end
    end
end