%skrypt testujacy obliczanie calki na trojkacie metoda dzielenia go na n^2
%trojkatow przystajacych

% %przyklad 1
% f=@(x,y)x.^2+y.^2;
% value=152.5;

% %przyklad 2
% f=@(x,y)sqrt(x)+y;
% value=44.596;

%przyklad 3
 f=@(x,y)sin(x)+cos(y);
 value=6.09245;
%n - koniec rozpatrywanego przedzialu dla wykres1, oraz wartosc dla ktorej
%rysujemy wykres 2
n=100;
%wspolrzedne wierzcholkow trojkata
x1=0; y1=0;
x2=0; y2=5;
x3=6; y3=0;


wykres1;
wykres2;