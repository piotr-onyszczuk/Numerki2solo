function [res] = integral(x1,y1,x2,y2,x3,y3,n,f)

%wektor (x1->x2)/n
v12=[(x2-x1)/n; (y2-y1)/n];
%wektor (x1->x3)/n
v13=[(x3-x1)/n; (y3-y1)/n];
%wektor (x2->x3)/n
v23=[(x3-x2)/n; (y3-y2)/n];

res=0;
x2=x1+v12(1);
y2=y1+v12(2);
x3=x1+v13(1);
y3=x1+v13(2);
for i=1:n
    res=res+integral_on_row(x1,y1,x2,y2,x3,y3,v23,2*i-1,f);
    x1=x2;
    y1=y2;
    x2=x1+v12(1);
    y2=y1+v12(2);
    x3=x1+v13(1);
    y3=y1+v12(2);
end