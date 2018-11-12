function [res1,res2] = integral_for_plot(x1,y1,x2,y2,x3,y3,n,f)

%wektor (x1->x2)/n
v12=[(x2-x1)/n; (y2-y1)/n];
%wektor (x1->x3)/n
v13=[(x3-x1)/n; (y3-y1)/n];
%wektor (x2->x3)/n
v23=[(x3-x2)/n; (y3-y2)/n];

res1=[];
res2=[];
x2=x1+v12(1);
y2=y1+v12(2);
x3=x1+v13(1);
y3=x1+v13(2);
for i=1:n
    [a,b]=integral_on_row_for_plot(x1,y1,x2,y2,x3,y3,v23,2*i-1,f);
    res1=[res1;a];
    res2=[res2;b];
    x1=x2;
    y1=y2;
    x2=x1+v12(1);
    y2=y1+v12(2);
    x3=x1+v13(1);
    y3=y1+v12(2);
end