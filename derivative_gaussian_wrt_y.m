function DOG= DeriveGaussY(sigma)
% DOG with respect to Y
G=double(zeros(3,3));
y=-1;
for i=1:3
    x=-1;
    for j=1:3
        
        a= ((-y)/(2*pi*(sigma^4)));
        b=-(((x^2)+(y^2))/(2*(sigma^2)));
        c=exp(b);
        d=a*c;
        G(i,j)=d;
        
        x=x+1;
    end
    y=y+1;
end
DOG=(G);
return
end