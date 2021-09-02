function Gauss= GaussianKernel(sigma)
%for window 9x9 
G=double(zeros(9,9));
y=-4;
for i=1:9
    x=-4;
    for j=1:9
        
        a= (1/(2*pi*(sigma^2)));
        b=-(((x^2)+(y^2))/(2*(sigma^2)));
        c=exp(b);
        d=a*c;
        G(i,j)=d;
        
        x=x+1;
    end
    y=y+1;
end
Gauss=(G);
return 
end
