function LOG= LapGauss(sigma)
% LOG window 3x3 
G=double(zeros(3,3));
y=-1;
for i=1:3
    x=-1;
    for j=1:3
        
        r=(x^2)+(y^2);
        a=(r^2)-(sigma^2);
        w=sigma^4;
        m=a/w;
        b=-((r^2)/(2*(sigma^2)));
        c=exp(b);
        d=m*c;
        G(i,j)=d;
        
        x=x+1;
    end
    y=y+1;
end
LOG=(G);
return
end