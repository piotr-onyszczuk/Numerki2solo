%MATLAB R2018b
%funkcje bazowe
f1=@(x)1;
f2=@(x)x;
f3=@(x)x.^2;
f4=@(x)exp(x);

%funkcja aproksymowana
f=@(x)log(x);

%punkty aproksymacji
x0=1:1:10;

%macierz Grama i wektor wyrazow wolnych
[A,b]=matrix(x0,f,f1,f2,f3,f4);

%wspolczynniki interpolacji
coefs=A\b;

%wartosci funkcji aproksymujacej
vals=values(coefs,x0,f1,f2,f3,f4);

%rysowanie wykresu
plot(x0,f(x0),'.',x0,f(x0),x0,vals);
xlabel('x');
ylabel('y');
legend('punkty pomiarowe', 'funkcja aproksymowana', 'funkcja aproksymujaca');

%blad sredniokwadratowy
err=immse(f(x0)',vals)