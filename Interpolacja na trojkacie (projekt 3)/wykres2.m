%skrypt rysujacy wykres wartosci calek policzonych w malych trojkatach

[args, vals]=integral_for_plot(x1,y1,x2,y2,x3,y3,n,f);
subplot(2,1,2);
plot3(args(:,1),args(:,2),vals,'.');
title('Wykres wartosci calek w trojkatach');
xlabel('x');
ylabel('y');
zlabel('z');
grid on;