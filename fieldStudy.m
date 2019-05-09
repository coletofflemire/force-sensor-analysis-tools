function varargout = fieldStudy(varargin)
% FIELDSTUDY MATLAB code for fieldStudy.fig
%      FIELDSTUDY, by itself, creates a new FIELDSTUDY or raises the existing
%      singleton*.
%
%      H = FIELDSTUDY returns the handle to a new FIELDSTUDY or the handle to
%      the existing singleton*.
%
%      FIELDSTUDY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FIELDSTUDY.M with the given input arguments.
%
%      FIELDSTUDY('Property','Value',...) creates a new FIELDSTUDY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before fieldStudy_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to fieldStudy_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help fieldStudy

% Last Modified by GUIDE v2.5 20-Jul-2018 10:23:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @fieldStudy_OpeningFcn, ...
                   'gui_OutputFcn',  @fieldStudy_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before fieldStudy is made visible.
function fieldStudy_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to fieldStudy (see VARARGIN)

% Choose default command line output for fieldStudy
handles.output = hObject;

handles.zero1=0;
handles.zero2=0;
handles.zero3=0;
handles.zero4=0;
handles.zero5=0;
handles.zero6=0;
handles.zero7=0;
handles.zero8=0;
handles.zero9=0;

handles.t1_1=0;
handles.t2_1=0;
handles.t1_2=0;
handles.t2_2=0;
handles.t1_3=0;
handles.t2_3=0;
handles.t1_4=0;
handles.t2_4=0;
handles.t1_5=0;
handles.t2_5=0;
handles.t1_6=0;
handles.t2_6=0;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes fieldStudy wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = fieldStudy_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function idNum_Callback(hObject, eventdata, handles)

function idNum_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function height_Callback(hObject, eventdata, handles)

function height_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function weight_Callback(hObject, eventdata, handles)

function weight_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function headLength_Callback(hObject, eventdata, handles)

function headLength_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function headCirc_Callback(hObject, eventdata, handles)

function headCirc_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function headBreadth_Callback(hObject, eventdata, handles)

function headBreadth_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function faceBreadth_Callback(hObject, eventdata, handles)

function faceBreadth_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function headHeight_Callback(hObject, eventdata, handles)

function headHeight_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function coronal_Callback(hObject, eventdata, handles)

function coronal_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sagittal_Callback(hObject, eventdata, handles)

function sagittal_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function earToTop_Callback(hObject, eventdata, handles)

function earToTop_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function earToBack_Callback(hObject, eventdata, handles)

function earToBack_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function faceLength_Callback(hObject, eventdata, handles)

function faceLength_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function topTightness_Callback(hObject, eventdata, handles)

function topTightness_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rank1_Callback(hObject, eventdata, handles)

function rank1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rank2_Callback(hObject, eventdata, handles)

function rank2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rank3_Callback(hObject, eventdata, handles)

function rank3_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rank4_Callback(hObject, eventdata, handles)

function rank4_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function restTens1_Callback(hObject, eventdata, handles)

function restTens1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function restTens2_Callback(hObject, eventdata, handles)

function restTens2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function frontal_Callback(hObject, eventdata, handles)

function frontal_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function temporal1_Callback(hObject, eventdata, handles)

function temporal1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function temporal2_Callback(hObject, eventdata, handles)

function temporal2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function parietal_Callback(hObject, eventdata, handles)

function parietal_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function occipital_Callback(hObject, eventdata, handles)

function occipital_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function chinstrap_Callback(hObject, eventdata, handles)

function chinstrap_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function comfort_Callback(hObject, eventdata, handles)

function comfort_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tightness_Callback(hObject, eventdata, handles)

function tightness_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tension1_Callback(hObject, eventdata, handles)

function tension1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tension2_Callback(hObject, eventdata, handles)

function tension2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% ZEROS SENSORS
% --- Executes on button press in button1.
function button1_Callback(hObject, eventdata, handles)
% hObject    handle to button1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clearvars a;
a = arduino;
analogIn = ["A0", "A1", "A2", "A3", "A4", "A5", "A6", "A7", "A8"];
set(handles.instr, 'string', 'Zeroing sensors...');
for index1=1:9
    for index2=1:100
        zero(index2) = readVoltage(a, analogIn(index1));
        pause(0.001);
    end
    offset(index1)=mean(zero);
    set(handles.instr, 'string', 'Zeroing sensors.');
    pause(0.2);
    set(handles.instr, 'string', 'Zeroing sensors..');
    pause(0.2);
    set(handles.instr, 'string', 'Zeroing sensors...');
end
handles.zero1=offset(1);
guidata(hObject, handles);

handles.zero2=offset(2);
guidata(hObject, handles);

handles.zero3=offset(3);
guidata(hObject, handles);

handles.zero4=offset(4);
guidata(hObject, handles);

handles.zero5=offset(5);
guidata(hObject, handles);

handles.zero6=offset(6);
guidata(hObject, handles);

handles.zero7=offset(7);
guidata(hObject, handles);

handles.zero8=offset(8);
guidata(hObject, handles);

handles.zero9=offset(9);
guidata(hObject, handles);

avg = round(mean(offset),3);
stdev = round(std(offset),3);
zeroAVG = ['Zero Average: ' num2str(avg)];
zeroSTD = ['Zero Std Dev: ' num2str(stdev)];
set(handles.zeroAVG, 'string', zeroAVG);
set(handles.zeroSTD, 'string', zeroSTD);
set(handles.instr, 'string', 'Enter tightness and corresponding ratings and tensions, then click Confirm and Calculate Pressure.');

% DATA ACQUISITION OF SENSORS AND INPUT RATINGS
% --- Executes on button press in button2.
function button2_Callback(hObject, eventdata, handles)
% hObject    handle to button2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clearvars a;
a = arduino;
analogIn = ["A0", "A1", "A2", "A3", "A4", "A5", "A6", "A7", "A8"];
fileName = 'WLFieldStudy.xlsx';
id = str2double(get(handles.idNum, 'string'));
playerFile = ['WL' int2str(id) '.xlsx'];
set(handles.instr, 'string', 'Acquiring data...');
offset(1)=handles.zero1;
offset(2)=handles.zero2;
offset(3)=handles.zero3;
offset(4)=handles.zero4;
offset(5)=handles.zero5;
offset(6)=handles.zero6;
offset(7)=handles.zero7;
offset(8)=handles.zero8;
offset(9)=handles.zero9;
zeroCell=['AH' int2str(14*(id-1)+3)];
xlswrite(fileName, "Zero Readings", 'Sheet1', 'AH2');
xlswrite(fileName, offset.', 'Sheet1', zeroCell);
xlswrite(playerFile, "Zero Readings", 'Sheet1', 'AH2');
xlswrite(playerFile, offset.', 'Sheet1', 'AH3');

t = str2double(get(handles.tightness, 'string'));
picFile = ['WL' int2str(id) '_' int2str(t) '.png'];

height = str2double(get(handles.height, 'string'));
weight = str2double(get(handles.weight, 'string'));
headLength = str2double(get(handles.headLength, 'string'));
headCirc = str2double(get(handles.headCirc, 'string'));
headBreadth = str2double(get(handles.headBreadth, 'string'));
faceBreadth = str2double(get(handles.faceBreadth, 'string'));
headHeight = str2double(get(handles.headHeight, 'string'));
coronal = str2double(get(handles.coronal, 'string'));
sagittal = str2double(get(handles.sagittal, 'string'));
earToTop = str2double(get(handles.earToTop, 'string'));
earToBack = str2double(get(handles.earToBack, 'string'));
faceLength = str2double(get(handles.faceLength, 'string'));
topTightness = str2double(get(handles.topTightness, 'string'));

frontal = str2double(get(handles.frontal, 'string'));
temporal1 = str2double(get(handles.temporal1, 'string'));
temporal2 = str2double(get(handles.temporal2, 'string'));
parietal = str2double(get(handles.parietal, 'string'));
occipital = str2double(get(handles.occipital, 'string'));
chinstrap = str2double(get(handles.chinstrap, 'string'));
comfort = str2double(get(handles.comfort, 'string'));

meas = [height;weight;headLength;headCirc;headBreadth;faceBreadth;headHeight;coronal;sagittal;earToTop;earToBack;faceLength;topTightness];
measCell=['E' int2str(14*(id-1)+3)];
idCell=['A' int2str(14*(id-1)+15)];
xlswrite(fileName, id, 'Sheet1', idCell);
xlswrite(fileName, meas, 'Sheet1', measCell);
xlswrite(playerFile, id, 'Sheet1', 'A15');
xlswrite(playerFile, meas, 'Sheet1', 'E3');

tension=[NaN;NaN;NaN;NaN;NaN;NaN;NaN;NaN;NaN];
tension(1,1) = str2double(get(handles.tension1, 'string'));
tension(2,1) = str2double(get(handles.tension2, 'string'));

if t==1
    dataCell=['M' int2str(14*(id-1)+3)];
    dataCell2='M3';
    handles.t1_1=tension(1,1);
    guidata(hObject, handles);
    handles.t2_1=tension(2,1);
    guidata(hObject, handles);
end
if t==2
    dataCell=['P' int2str(14*(id-1)+3)];
    dataCell2='P3';
    handles.t1_2=tension(1,1);
    guidata(hObject, handles);
    handles.t2_2=tension(2,1);
    guidata(hObject, handles);
end
if t==3
    dataCell=['S' int2str(14*(id-1)+3)];
    dataCell2='S3';
    handles.t1_3=tension(1,1);
    guidata(hObject, handles);
    handles.t2_3=tension(2,1);
    guidata(hObject, handles);
end
if t==4
    dataCell=['V' int2str(14*(id-1)+3)];
    dataCell2='V3';
    handles.t1_4=tension(1,1);
    guidata(hObject, handles);
    handles.t2_4=tension(2,1);
    guidata(hObject, handles);
end
if t==5
    dataCell=['Y' int2str(14*(id-1)+3)];
    dataCell2='Y3';
    handles.t1_5=tension(1,1);
    guidata(hObject, handles);
    handles.t2_5=tension(2,1);
    guidata(hObject, handles);
end
if t==6
    dataCell=['AB' int2str(14*(id-1)+3)];
    dataCell2='AB3';
    handles.t1_6=tension(1,1);
    guidata(hObject, handles);
    handles.t2_6=tension(2,1);
    guidata(hObject, handles);
end
tensions(1)=handles.t1_1;
tensions(2)=handles.t2_1;
tensions(3)=handles.t1_2;
tensions(4)=handles.t2_2;
tensions(5)=handles.t1_3;
tensions(6)=handles.t2_3;
tensions(7)=handles.t1_4;
tensions(8)=handles.t2_4;
tensions(9)=handles.t1_5;
tensions(10)=handles.t2_5;
tensions(11)=handles.t1_6;
tensions(12)=handles.t2_6;

for i=1:9
    for i2=1:100
        v = readVoltage(a, analogIn(i));
        pressure(i2) = 45*(v-offset(i))/(pi*0.00005625);
        if i==9
            pressure(i2) = 35.028*(v-offset(i))/(pi*0.00005625);
        end
        pause(0.001);
    end      
    sensorReading(i,1) = mean(pressure);
    set(handles.instr, 'string', 'Acquiring data.');
    pause(0.2);
    set(handles.instr, 'string', 'Acquiring data..');
    pause(0.2);
    set(handles.instr, 'string', 'Acquiring data...');
end

ratings=[frontal;temporal1;temporal2;parietal;occipital;chinstrap;comfort;NaN;NaN];
data=[ratings,sensorReading,tension];
xlswrite(fileName, data, 'Sheet1', dataCell);
xlswrite(playerFile, data, 'Sheet1', dataCell2);

[x,y,z] = sphere;
x = 0.5*headLength*x(11:end,:);     
y = 0.5*headBreadth*y(11:end,:);    
z = 0.5*headHeight*z(11:end,:);
cx = [3,8,6,8,5,3,4,2,3];
cy = [20,20,18,15,14,15,12,13,17];
cy2 = [2,2,4,7,8,7,10,9,5];
c = zeros(size(z));
for i=1:9
    c(cx(i),cy(i)) = sensorReading(i);
    c(cx(i),cy2(i)) = sensorReading(i);
end

s = surf(x,y,z,c);
s.FaceColor = 'interp';
s.EdgeColor = 'black';
colorbar
hold on
xlabel('X');
ylabel('Y');
zlabel('Z');
axis equal
axes(handles.forceDiagram);

y = [tensions(1:2); tensions(3:4); tensions(5:6); tensions(7:8); 
    tensions(9:10); tensions(11:12)].';
b = bar(y,'FaceColor','flat');
set(gca,'XTickLabel',{'Tension 1','Tension 2'})
for k=1:size(y,2)
   b(k).CData = k;
end
axes(handles.tensionDiagram);

export_fig(sprintf(picFile));

set(handles.tightness, 'string', '');
set(handles.frontal, 'string', '');
set(handles.temporal1, 'string', '');
set(handles.temporal2, 'string', '');
set(handles.parietal, 'string', '');
set(handles.occipital, 'string', '');
set(handles.chinstrap, 'string', '');
set(handles.comfort, 'string', '');
set(handles.tension1, 'string', '');
set(handles.tension2, 'string', '');
set(handles.instr, 'string', 'Repeat for up to six tightnesses then enter resting tensions and rankings. Click Confirm after entering rankings.');

%WRITES RANKINGS AND RESTING TENSIONS
% --- Executes on button press in button3.
function button3_Callback(hObject, eventdata, handles)
% hObject    handle to button3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fileName = 'WLFieldStudy.xlsx';
id = str2double(get(handles.idNum, 'string'));
playerFile = ['WL' int2str(id) '.xlsx'];

rankCell = ['AG' int2str(14*(id-1)+3)];
restTensionCell = ['AI' int2str(14*(id-1)+3)];
restTension(1,1) = str2double(get(handles.restTens1, 'string'));
restTension(2,1) = str2double(get(handles.restTens2, 'string'));
rank(1,1) = get(handles.rank1, 'string');
rank(2,1) = get(handles.rank2, 'string');
rank(3,1) = get(handles.rank3, 'string');
rank(4,1) = get(handles.rank4, 'string');
xlswrite(fileName, rank, 'Sheet1', rankCell);
xlswrite(fileName, restTension, 'Sheet1', restTensionCell);
xlswrite(playerFile, rank, 'Sheet1', 'AG3');
xlswrite(playerFile, restTension, 'Sheet1', 'AI3');

set(handles.instr, 'string', 'Click Clear All and repeat for all participants.');

%WRITES EXCEL TEMPLATE, RESETS GUI
% --- Executes on button press in button4.
function button4_Callback(hObject, eventdata, handles)
% hObject    handle to button4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
id = str2double(get(handles.idNum, 'string')); 
fileName = 'WLFieldStudy.xlsx';
playerFile = ['WL' int2str(id) '.xlsx'];

rates = ["Frontal";"Left Temporal";"Right Temporal";"Parietal";"Occipital";"Chinstrap";"Comfort";" ";" "];
ratesCell=['F' int2str(14*(id-1)+3)];
xlswrite(fileName, rates, 'Sheet1', ratesCell);
xlswrite(playerFile, rates, 'Sheet1', 'F3');
tension = ["Tension 1";"Tension 2";" ";" ";" ";" ";" ";" ";" ";" ";" "];
tensionCell=['K' int2str(14*(id-1)+3)];
xlswrite(fileName, tension, 'Sheet1', tensionCell);
xlswrite(playerFile, tension, 'Sheet1', 'K3');
pressure = ["Pressure 1";"Pressure 2";"Pressure 3";"Pressure 4";"Pressure 5";"Pressure 6";"Pressure 7";"Pressure 8";"Pressure 9"; " "; "Average"];
pressureCell=['I' int2str(14*(id-1)+3)];
xlswrite(fileName, pressure, 'Sheet1', pressureCell);
xlswrite(playerFile, pressure, 'Sheet1', 'I3');

header = ["ID#", "Measurements", "","","", "Ratings","","", "Sensors","","","", "Tightness 1","","", "Tightness 2","","", "Tightness 3","","", "Tightness 4","","", "Tightness 5","","", "Tightness 6","","", "Rankings"];
xlswrite(fileName, header, 'Sheet1', 'A2');
xlswrite(playerFile, header, 'Sheet1', 'A2');

titles = ["Height"; "Weight"; "Head Length"; "Head Circumference"; "Head Breadth"; "Face Breadth"; "Head Height"; "Coronal Arc"; "Sagittal Arc"; "Ear To Top"; "Ear To Back"; "Face Length"; "Top Strap Tightness"];
titlesCell=['B' int2str(14*(id-1)+3)];
xlswrite(fileName, titles, 'Sheet1', titlesCell);
xlswrite(playerFile, titles, 'Sheet1', 'B3');

set(handles.tightness, 'string', '');
set(handles.frontal, 'string', '');
set(handles.temporal1, 'string', '');
set(handles.temporal2, 'string', '');
set(handles.parietal, 'string', '');
set(handles.occipital, 'string', '');
set(handles.chinstrap, 'string', '');
set(handles.comfort, 'string', '');
set(handles.tension1, 'string', '');
set(handles.tension2, 'string', '');

set(handles.idNum, 'string', '');
set(handles.height, 'string', '');
set(handles.weight, 'string', '');
set(handles.headLength, 'string', '');
set(handles.headCirc, 'string', '');
set(handles.headBreadth, 'string', '');
set(handles.faceBreadth, 'string', '');
set(handles.headHeight, 'string', '');
set(handles.coronal, 'string', '');
set(handles.sagittal, 'string', '');
set(handles.earToTop, 'string', '');
set(handles.earToBack, 'string', '');
set(handles.faceLength, 'string', '');
set(handles.topTightness, 'string', '');
set(handles.instr, 'string', 'Enter measurements and click Zero Sensors. Repeating the last ID surveyed and any before that will overwrite that information.');

set(handles.rank1, 'string', '');
set(handles.rank2, 'string', '');
set(handles.rank3, 'string', '');
set(handles.rank4, 'string', '');
set(handles.restTens1, 'string', '');
set(handles.restTens2, 'string', '');

handles.t1_1=0;
handles.t2_1=0;
handles.t1_2=0;
handles.t2_2=0;
handles.t1_3=0;
handles.t2_3=0;
handles.t1_4=0;
handles.t2_4=0;
handles.t1_5=0;
handles.t2_5=0;
handles.t1_6=0;
handles.t2_6=0;

recentID = ['Last ID Surveyed: ' int2str(id)];
set(handles.recentID, 'string', recentID);
cla(handles.tensionDiagram);
cla(handles.forceDiagram);
