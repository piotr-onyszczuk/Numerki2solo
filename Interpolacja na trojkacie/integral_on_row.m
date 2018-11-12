function [res]=integral_on_row(x1,y1,x2,y2,x3,y3,v23,n,f)

res=0;
res=res+calculate_triangle(x1,y1,x2,y2,x3,y3,f);
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
       res=res+calculate_triangle(x1,y1,x2,y2,x3,y3,f);
    end
end

end