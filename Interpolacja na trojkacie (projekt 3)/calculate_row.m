function [res] = calculate_row(x,y,v,n,f)
%funkcja obliczajaca w sposob zoptymalizowany wartosci potrzebne do
%obliczenia calki na trojkacie, pomocnicza do opt_integral

res=0;
for i=1:n
   switch i
       %pierwszy w rzedzie
       case 1
          res=res+f(x(1),y(1))+2*f(x(2),y(2))+2*f(x(3),y(3));
       %ostatni w rzedzie
       case n
          res=res+2*f(x(1),y(1))+f(x(2),y(2))+2*f(x(3),y(3));
       %pozostale
       otherwise
          res=res+2*(f(x(1),y(1))+f(x(2),y(2))+f(x(3),y(3)));
   end
   x=x+v(1);
   y=y+v(2);
end

end