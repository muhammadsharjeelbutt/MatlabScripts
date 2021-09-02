function Harmean=harmonicmean5()
% for 5x5 window size
original_image=imread('White-Bars.png');
converted = original_image(:,:,1);
row=size(converted,1);col=size(converted,2);
convert=double(converted);
den=0;s=0;
for i=1:(row-4)
    for j=1:(col-4)
        for x=0:4
            for y=0:4
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