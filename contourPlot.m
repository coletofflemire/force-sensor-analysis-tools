%PLOTS 9 PRESSURE VALUES AS COLOURS ON HEAD MODEL 
clearvars a;

a=arduino;
analogIn=["A0","A1","A2","A3","A4","A5","A6","A7","A8"];

%ZEROS SENSORS
zero=zeros(9,100);
offset=zeros(1,9);
for i=1:9
    for index=1:100
        zero(i,index) = readVoltage(a, analogIn(i));
    end
    offset(i)=mean(zero(i,:));
end

disp('Press a key to begin data collection');
pause;

%DATA COLLECTION OF SENSORS
voltage=zeros(9,100);
pressure=zeros(9,100);
averages=zeros(1,9);

for i=1:9
    for i2=1:100
        voltage(i,i2) = readVoltage(a, analogIn(i));
        v = voltage(i,i2);
        pressure(i,i2) = 45*(v-offset(i))/(pi*0.00005625); 
    end
    averages(i)=mean(pressure(i,:));
end

%PLOTTING OF PRESSURE VALUES
[x,y,z] = sphere;      
x = 0.5*200*x(11:end,:);     
y = 0.5*150*y(11:end,:);    
z = 0.5*216*z(11:end,:);   

cx = [3,8,6,8,5,3,4,2,3];
cy = [20,20,18,15,14,15,12,13,17];
cy2 = [2,2,4,7,8,7,10,9,5];

c = zeros(size(z));
for index=1:9
    c(cx(index),cy(index)) = averages(index);
    c(cx(index),cy2(index)) = averages(index);
end

s = surf(x,y,z,c);
s.FaceColor = 'interp';
colorbar
hold on
xlabel('X');
ylabel('Y');
zlabel('Z');
axis equal