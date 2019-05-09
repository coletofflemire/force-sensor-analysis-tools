%%%%% USE IF SENSOR IS NOT RESPONDING PROPERLY
clear a;
a = arduino;%('COM7','Uno');

analogIn=["A0","A1","A2","A3","A4","A5","A6","A7","A8"];
for i=1:9
    for index=1:200
        zero(index) = readVoltage(a, analogIn(i));
    end
    offset(i)=mean(zero);
end
test=input('Enter number of tests');
for index=1:test
    cont=input('Press enter to continue. ');
    for i=1:9
         for i2=1:100
                v = readVoltage(a, analogIn(i));
                pressure(i2) = 45*(v-offset(i))/(pi*0.00005625);
                pause(0.001);
                if i==9
                    pressure(i2) = 35.028*(v-offset(i))/(pi*0.00005625);
                end
         end
        averages(index,i)=mean(pressure);
    end
end
