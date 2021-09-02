function Harmean=harmonicmean()
% for 3x3 harmonic mean
original_image=imread('White-Bars.png');
converted = original_image(:,:,1);

row=size(converted,1);col=size(converted,2);
convert=double(converted);
den=0;s=0;
for i=1:(row-2)
    for j=1:(col-2)
        for x=0:2
            for y=0:2
                den=1/converted(i+x,j+y);
                s=s+den;
            end
        end
        convert(i+1,j+1)= 9/s;
        den=0;
        s=0;
    end
end

Harmean=imshow(convert);
return
end