
times_opt=zeros(1,n);
times_non=zeros(1,n);
values_opt=zeros(1,n);
values_non=zeros(1,n);
val=value*ones(1,n);
beg=1;
args=beg:n;
for i=args
    square=abs((x2-x1)*(y3-y1)-(y2-y1)*(x3-x1))/(2*i*i);
    %optimized
    tic
    values_opt(i)=square*opt_integral(x1,y1,x2,y2,x3,y3,i,f)/3;
    times_opt(i)=toc;
    %non-optimized
    tic
    values_non(i)=square*integral(x1,y1,x2,y2,x3,y3,i,f)/3;
    times_non(i)=toc;
end

subplot(2,2,1);
plot(args,times_opt(args),'.',args,times_non(args),'.');
legend('optimized','non-optimized');
xlabel('N');
ylabel('time');

subplot(2,2,2);
plot(args,values_opt(args),'.',args,values_non(args),'.',args,val(args),'.');
legend('optimized','non-optimized','value');
xlabel('N');
ylabel('value');