%CONVERTS NUMBER TO AN RGB VALUE ON A SCALE OF 0:fullScale
r=zeros(1,1024);
g=zeros(1,1024);
b=zeros(1,1024);
fullScale = input('Enter full scale: ');
for i=1:256
    r(i)=0;
    g(i)=i;
    b(i)=256;
end
for i=257:512
    r(i)=0;
    g(i)=256;
    b(i)=512-i;
end
for i=513:768
    r(i)=i-512;
    g(i)=256;
    b(i)=0;
end
for i=769:1024
    r(i)=256;
    g(i)=1024-i;
    b(i)=0;
end

num=input('Enter number: ');
value=round(num*1024/fullScale);
if value<1
    value=1;
end
if value>1024
    value=1024;
end
rgb=zeros(1,3);
rgb(1)=r(value);
rgb(2)=g(value);
rgb(3)=b(value);
disp(rgb);