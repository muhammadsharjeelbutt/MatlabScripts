function Contra= ContraHarmean15(Q)
%for 5x5 window size
original_image=imread('White-Bars.png');
converted = original_image(:,:,1);
row=size(converted,1);col=size(converted,2);
convert=double(converted);
s1=0;s2=0;
for i=1:(row-4)
    for j=2:(col-4)
        for x=0:4
            for y=0:4
                s1=double(s1)+double(double(converted(i+x,j+y)).^(Q+1));
                s2=double(s2)+double(double(converted(i+x,j+y)).^(Q));
            end
        end
        convert(i+1,j+1)=double(double(s1)/double(s2));
        s1=0;s2=0;
    end
end
Contra=imshow(convert);
return
end