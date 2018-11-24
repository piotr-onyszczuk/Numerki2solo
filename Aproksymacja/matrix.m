function [A,b]= matrix(x0,f,f1,f2,f3,f4)
A=zeros(4,4);
b=zeros(4,1);

A(1,1)=sum(f1(x0).*f1(x0));
A(1,2)=sum(f1(x0).*f2(x0));
A(1,3)=sum(f1(x0).*f3(x0));
A(1,4)=sum(f1(x0).*f4(x0));

A(2,1)=A(1,2);
A(2,2)=sum(f2(x0).*f2(x0));
A(2,3)=sum(f2(x0).*f3(x0));
A(2,4)=sum(f2(x0).*f4(x0));

A(3,1)=A(1,3);
A(3,2)=A(2,3);
A(3,3)=sum(f3(x0).*f3(x0));
A(3,4)=sum(f3(x0).*f4(x0));

A(4,1)=A(1,4);
A(4,2)=A(2,4);
A(4,3)=A(3,4);
A(4,4)=sum(f4(x0).*f4(x0));

b(1,1)=sum(f1(x0).*f(x0));
b(2,1)=sum(f2(x0).*f(x0));
b(3,1)=sum(f3(x0).*f(x0));
b(4,1)=sum(f4(x0).*f(x0));