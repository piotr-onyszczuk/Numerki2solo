function [values]=values(coefs,x0,f1,f2,f3,f4)
%funkcja oblicza wartosci funkcji aproksymujacej dla zadanych argumentow
%coefs - wspolczynniki aproksymacji
%x0 - argumenty w ktorych funkcja jest aproksymowana
%f1,f2,f3,f4 - funkcje z bazy

n=length(x0);
values=zeros(n,1);

for i=1:n
    values(i)=coefs(1)*f1(x0(i))+coefs(2)*f2(x0(i))+coefs(3)*f3(x0(i))+coefs(4)*f4(x0(i));
end

end
