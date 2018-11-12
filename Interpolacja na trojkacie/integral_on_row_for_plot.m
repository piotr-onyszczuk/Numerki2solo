function [res1,res2]=integral_on_row_for_plot(x1,y1,x2,y2,x3,y3,v23,n,f)

res1=[];
res2=[];
res1=[res1;(x1+x2+x3)/3 (y1+y2+y3)/3];
res2=[res2; calculate_triangle(x1,y1,x2,y2,x3,y3,f)];
if n>1
    for i=2:n
       if mod(i,2)==0
           x2=x1+v23(1);
           y2=y1+v23(2);
       else
           x1=x2;
           y1=y2;
           x2=x3;
           y2=y3;
           x3=x2+v23(1);
           y3=y2+v23(2);
       end
       res1=[res1;(x1+x2+x3)/3 (y1+y2+y3)/3];
       res2=[res2; calculate_triangle(x1,y1,x2,y2,x3,y3,f)];
    end
end

end