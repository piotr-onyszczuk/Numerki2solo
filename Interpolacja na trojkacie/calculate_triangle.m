function [res]= calculate_triangle(x1,y1,x2,y2,x3,y3,f)
%funkcja obliczajaca calke z funkcji f na trojkacie (x1,y1), (x2,y2),
%(x3,y3), metoda rzedu 3, wykorzystywana w integral_on_row

x12=(x1+x2)/2;
y12=(y1+y2)/2;
x23=(x2+x3)/2;
y23=(y2+y3)/2;
x13=(x1+x3)/2;
y13=(y1+y3)/2;
res=f(x12,y12)+f(x13,y13)+f(x23,y23);