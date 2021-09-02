function Geo=geomean()
% for a 3x3 window size 
original_image=imread('White-Bars.png');
converted = double(original_image(:,:,1));
row = size(converted,1);col=size(converted,2);
convert=double(converted);
mult=1;
for i=1:(row-2)
    for j=1:(col-2)
        for x=0:2
            for y=0:2
                mult=mult*converted(i+x,j+y);
            end
        end
        convert(i+1,j+1)=double(double(mult).^double(1/9));
        mult=1;
    end
end
Geo=imshow(convert);
return 
end