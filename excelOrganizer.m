
num=input('Enter total number of people: ');
for i0=1:num
    for i02=1:6
        id(6*(i0-1)+i02)=strcat("WL",int2str(i0),"_",int2str(i02));
    end
end

for i=1:num
    topStrap=xlsread('WLFieldStudy.xlsx','Sheet1',['E' int2str(14*(i-1)+15)]);
    if size(topStrap) ~= 1
        topStrap = NaN;
    end
    meas=xlsread('WLFieldStudy.xlsx',['E' int2str(14*(i-1)+3) ':E' int2str(14*(i-1)+14)]);
    if size(meas)~= 12
        meas=[NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN];
    end
    for i2=1:6
        if i2==1
            pCells='N';
            tCells='O';
            rCells='M';
        end
        if i2==2
            pCells='Q';
            tCells='R';
            rCells='P';    
        end
        if i2==3
            pCells='T';
            tCells='U';
            rCells='S';
        end
        if i2==4
            pCells='W';
            tCells='X';
            rCells='V';
        end
        if i2==5
            pCells='Z';
            tCells='AA';
            rCells='Y';
        end
        if i2==6
            pCells='AC';
            tCells='AD';
            rCells='AB';  
        end
        xlswrite('HelmetFitDataSummary-Raw.xlsx', topStrap, 'Sheet1', ['B' int2str(6*(i-1)+1+i2)]);
        
        pressure=xlsread('WLFieldStudy.xlsx','Sheet1',[pCells int2str(14*(i-1)+3) ':' pCells int2str(14*(i-1)+11)]);
        if size(pressure) ~= 9
            pressure=[NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN];
        end
        xlswrite('HelmetFitDataSummary-Raw.xlsx', pressure.', 'Sheet1', ['C' int2str(6*(i-1)+1+i2)]);
        
        tensions=xlsread('WLFieldStudy.xlsx','Sheet1',[tCells int2str(14*(i-1)+3) ':' tCells int2str(14*(i-1)+4)]);
        if size(tensions) ~= 2
            tensions=[NaN,NaN];
        end
        xlswrite('HelmetFitDataSummary-Raw.xlsx', tensions.', 'Sheet1', ['L' int2str(6*(i-1)+1+i2)]);
        
        ratings=xlsread('WLFieldStudy.xlsx','Sheet1',[rCells int2str(14*(i-1)+3) ':' rCells int2str(14*(i-1)+9)]);
        if size(ratings) ~= 7
            ratings=[NaN,NaN,NaN,NaN,NaN,NaN,NaN];
        end
        xlswrite('HelmetFitDataSummary-Raw.xlsx', ratings.', 'Sheet1', ['N' int2str(6*(i-1)+1+i2)]);
        
        xlswrite('HelmetFitDataSummary-Raw.xlsx', meas.', 'Sheet1', ['U' int2str(6*(i-1)+1+i2)]);
    end
end
