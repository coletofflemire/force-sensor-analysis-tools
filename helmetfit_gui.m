function varargout = helmetfit_gui(varargin)
% HELMETFIT_GUI M-file for helmetfit_gui.fig
%      HELMETFIT_GUI, by itself, creates a new HELMETFIT_GUI or raises the existing
%      singleton*.
%
%      H = HELMETFIT_GUI returns the handle to a new HELMETFIT_GUI or the handle to
%      the existing singleton*.
%
%      HELMETFIT_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HELMETFIT_GUI.M with the given input arguments.
%
%      HELMETFIT_GUI('Property','Value',...) creates a new HELMETFIT_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before helmetfit_gui_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to helmetfit_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help helmetfit_gui

% Last Modified by GUIDE v2.5 22-Feb-2010 21:32:57

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @helmetfit_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @helmetfit_gui_OutputFcn, ...
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


% --- Executes just before helmetfit_gui is made visible.
function helmetfit_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to helmetfit_gui (see VARARGIN)

% Choose default command line output for helmetfit_gui
handles.output = hObject;
handles.axes1plot=0;
handles.axes2plot=0;
handles.avg=10;
handles.stddev=0;
handles.min=0;
handles.max=0;
handles.sub=0;
handles.data_cal=0;
handles.data_cal2=0;
handles.data_acq=0;
handles.data_acq2=0;

handles.cal_1=0;
handles.cal_2=0;
handles.dat_1=0;
handles.dat_2=0;

handles.cal1=0;
handles.cal2=0;
handles.cal3=0;
handles.cal4=0;
handles.cal5=0;
handles.cal6=0;
handles.cal7=0;
handles.cal8=0;
handles.cal9=0;
handles.cal10=0;
handles.cal11=0;
handles.cal12=0;
handles.cal13=0;
handles.cal14=0;
handles.cal15=0;
handles.cal16=0;
handles.cal17=0;
handles.cal18=0;
handles.cal19=0;
handles.cal20=0;
handles.cal21=0;
handles.cal22=0;
handles.cal23=0;
handles.cal24=0;


handles.d1=0;
handles.d2=0;
handles.d3=0;
handles.d4=0;
handles.d5=0;
handles.d6=0;
handles.d7=0;
handles.d8=0;
handles.d9=0;
handles.d10=0;
handles.d11=0;
handles.d12=0;
handles.d13=0;
handles.d14=0;
handles.d15=0;
handles.d16=0;
handles.d17=0;
handles.d18=0;
handles.d19=0;
handles.d20=0;
handles.d21=0;
handles.d22=0;
handles.d23=0;
handles.d24=0;


% Update handles structure
guidata(hObject, handles);

% UIWAIT makes helmetfit_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = helmetfit_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


%%-Returns subject number as handles.subject
function subject_Callback(hObject, eventdata, handles)
get(hObject,'String');
handles.subject = get(hObject,'String');
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function subject_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sub_number (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sport_Callback(hObject, eventdata, handles)
get(hObject,'String');
handles.sport = get(hObject,'String');
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function sport_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sport (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Position_Callback(hObject, eventdata, handles)
get(hObject,'String');
handles.Position = get(hObject,'String');
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function Position_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Position (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function make_Callback(hObject, eventdata, handles)
get(hObject,'String');
handles.make = get(hObject,'String');
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function make_CreateFcn(hObject, eventdata, handles)
% hObject    handle to make (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function model_Callback(hObject, eventdata, handles)
get(hObject,'String');
handles.model = get(hObject,'String');
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function model_CreateFcn(hObject, eventdata, handles)
% hObject    handle to model (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function size_Callback(hObject, eventdata, handles)
get(hObject,'String');
handles.size = get(hObject,'String');
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function size_CreateFcn(hObject, eventdata, handles)
% hObject    handle to size (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function circum_Callback(hObject, eventdata, handles)
get(hObject,'String');
handles.circum = str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function circum_CreateFcn(hObject, eventdata, handles)
% hObject    handle to circum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function length_Callback(hObject, eventdata, handles)
get(hObject,'String');
handles.length = str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function length_CreateFcn(hObject, eventdata, handles)
% hObject    handle to length (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function width_Callback(hObject, eventdata, handles)
get(hObject,'String');
handles.width = str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function width_CreateFcn(hObject, eventdata, handles)
% hObject    handle to width (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function height_Callback(hObject, eventdata, handles)
get(hObject,'String');
handles.height = str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function height_CreateFcn(hObject, eventdata, handles)
% hObject    handle to height (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on button press in calibrate.
function calibrate_Callback(hObject, eventdata, handles)
% hObject    handle to calibrate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

AI_cal = analoginput('mcc',1);
AI_cal.InputType = 'SingleEnded';
numch = addchannel(AI_cal,0:15);
set(AI_cal,'SampleRate',100)
set(AI_cal,'SamplesPerTrigger',100)
Start(AI_cal)
wait(AI_cal,10);
handles.data_cal = getdata(AI_cal);
data_cal=handles.data_cal;

cal1_v=mean(data_cal(:,1));
handles.cal1=cal1_v;
guidata(hObject, handles);

cal2_v=mean(data_cal(:,2));
handles.cal2=cal2_v;
guidata(hObject, handles);

cal3_v=mean(data_cal(:,3));
handles.cal3=cal3_v;
guidata(hObject, handles);

cal4_v=mean(data_cal(:,4));
handles.cal4=cal4_v;
guidata(hObject, handles);

cal5_v=mean(data_cal(:,5));
handles.cal5=cal5_v;
guidata(hObject, handles);

cal6_v=mean(data_cal(:,6));
handles.cal6=cal6_v;
guidata(hObject, handles);

cal7_v=mean(data_cal(:,7));
handles.cal7=cal7_v;
guidata(hObject, handles);

cal8_v=mean(data_cal(:,8));
handles.cal8=cal8_v;
guidata(hObject, handles);

cal9_v=mean(data_cal(:,9));
handles.cal9=cal9_v;
guidata(hObject, handles);

cal10_v=mean(data_cal(:,10));
handles.cal10=cal10_v;
guidata(hObject, handles);

cal11_v=mean(data_cal(:,11));
handles.cal11=cal11_v;
guidata(hObject, handles);

cal12_v=mean(data_cal(:,12));
handles.cal12=cal12_v;
guidata(hObject, handles);

cal13_v=mean(data_cal(:,13));
handles.cal13=cal13_v;
guidata(hObject, handles);

cal14_v=mean(data_cal(:,14));
handles.cal14=cal14_v;
guidata(hObject, handles);

cal15_v=mean(data_cal(:,15));
handles.cal15=cal15_v;
guidata(hObject, handles);

cal16_v=mean(data_cal(:,16));
handles.cal16=cal16_v;
guidata(hObject, handles);

cal_1=[handles.cal1 handles.cal2 handles.cal3 handles.cal4 handles.cal5 handles.cal6 handles.cal7 handles.cal8 handles.cal9 handles.cal10 handles.cal11 handles.cal12 handles.cal13 handles.cal14 handles.cal15 handles.cal16];

handles.cal_1=cal_1;

guidata(hObject, handles);

delete(AI_cal)
clear AI_cal

% --- Executes on button press in calibrate2.
function calibrate2_Callback(hObject, eventdata, handles)
% hObject    handle to calibrate2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

AI_cal2 = analoginput('mcc',1);
AI_cal2.InputType = 'SingleEnded';
numch = addchannel(AI_cal2,0:15);
set(AI_cal2,'SampleRate',100)
set(AI_cal2,'SamplesPerTrigger',100)
Start(AI_cal2)
wait(AI_cal2,10);
handles.data_cal2 = getdata(AI_cal2);
data_cal2=handles.data_cal2;

cal17_v=mean(data_cal2(:,5));
handles.cal17=cal17_v;
guidata(hObject, handles);

cal18_v=mean(data_cal2(:,6));
handles.cal18=cal18_v;
guidata(hObject, handles);

cal19_v=mean(data_cal2(:,7));
handles.cal19=cal19_v;
guidata(hObject, handles);

cal20_v=mean(data_cal2(:,8));
handles.cal20=cal20_v;
guidata(hObject, handles);

cal21_v=mean(data_cal2(:,13));
handles.cal21=cal21_v;
guidata(hObject, handles);

cal22_v=mean(data_cal2(:,14));
handles.cal22=cal22_v;
guidata(hObject, handles);

cal23_v=mean(data_cal2(:,15));
handles.cal23=cal23_v;
guidata(hObject, handles);

cal24_v=mean(data_cal2(:,16));
handles.cal24=cal24_v;
guidata(hObject, handles);

cal_2=[handles.cal17 handles.cal18 handles.cal19 handles.cal20 handles.cal21 handles.cal22 handles.cal23 handles.cal24];
handles.cal_2=cal_2;

guidata(hObject, handles);

delete(AI_cal2)
clear AI_cal2

% --- Executes on button press in plot_cal.
function plot_cal_Callback(hObject, eventdata, handles)
% hObject    handle to plot_cal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



cal=[handles.cal_1 handles.cal_2];

bar(handles.cal_plot, cal);
xlabel(handles.cal_plot,'Location')
ylabel(handles.cal_plot,'Voltage [V]')
set(gca,'xlim',[1 24])
title(['Subject_' num2str(handles.subject)])

%%%===================================================================%%%
%%%ENTER SENSOR CALIBRATION DATA INTO THIS SECTION%%%%%%%%

% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)

get(hObject,'Value')

if (get(hObject,'Value') == get(hObject,'Max'))
	handles.ch1_conv = 0;
else
	handles.ch1_conv = 43.5;
end

guidata(hObject, handles);

% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
get(hObject,'Value')

if (get(hObject,'Value') == get(hObject,'Max'))
	handles.ch2_conv = 0;
else
	handles.ch2_conv = 43.5;
end

guidata(hObject, handles);

% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
get(hObject,'Value')

if (get(hObject,'Value') == get(hObject,'Max'))
	handles.ch3_conv = 0;
else
	handles.ch3_conv = 33.1;
end

guidata(hObject, handles);

% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
get(hObject,'Value')

if (get(hObject,'Value') == get(hObject,'Max'))
	handles.ch4_conv = 0;
else
	handles.ch4_conv = 34.8;
end

guidata(hObject, handles);

% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
get(hObject,'Value')

if (get(hObject,'Value') == get(hObject,'Max'))
	handles.ch5_conv = 1.10;
else
	handles.ch5_conv = 33.9;
end

guidata(hObject, handles);
% --- Executes on button press in radiobutton6.
function radiobutton6_Callback(hObject, eventdata, handles)
get(hObject,'Value')

if (get(hObject,'Value') == get(hObject,'Max'))
	handles.ch6_conv = 1.59;
else
	handles.ch6_conv = 41.7;
end

guidata(hObject, handles);

% --- Executes on button press in radiobutton7.
function radiobutton7_Callback(hObject, eventdata, handles)
get(hObject,'Value')

if (get(hObject,'Value') == get(hObject,'Max'))
	handles.ch7_conv = 1.0;
else
	handles.ch7_conv = 37.4;
end

guidata(hObject, handles);

% --- Executes on button press in radiobutton8.
function radiobutton8_Callback(hObject, eventdata, handles)
get(hObject,'Value')

if (get(hObject,'Value') == get(hObject,'Max'))
	handles.ch8_conv = 0;
else
	handles.ch8_conv = 36.4;
end

guidata(hObject, handles);

% --- Executes on button press in radiobutton9.
function radiobutton9_Callback(hObject, eventdata, handles)
get(hObject,'Value')

if (get(hObject,'Value') == get(hObject,'Max'))
	handles.ch9_conv = 1.91;
else
	handles.ch9_conv = 75.9;
end

guidata(hObject, handles);

% --- Executes on button press in radiobutton10.
function radiobutton10_Callback(hObject, eventdata, handles)
get(hObject,'Value')

if (get(hObject,'Value') == get(hObject,'Max'))
	handles.ch10_conv = 0;
else
	handles.ch10_conv = 40.3;
end

guidata(hObject, handles);

% --- Executes on button press in radiobutton11.
function radiobutton11_Callback(hObject, eventdata, handles)
get(hObject,'Value')

if (get(hObject,'Value') == get(hObject,'Max'))
	handles.ch11_conv = 0;
else
	handles.ch11_conv = 32.6;
end

guidata(hObject, handles);

% --- Executes on button press in radiobutton12.
function radiobutton12_Callback(hObject, eventdata, handles)
get(hObject,'Value')

if (get(hObject,'Value') == get(hObject,'Max'))
	handles.ch12_conv = 0;
else
	handles.ch12_conv = 34.5;
end

guidata(hObject, handles);

% --- Executes on button press in radiobutton13.
function radiobutton13_Callback(hObject, eventdata, handles)
get(hObject,'Value')

if (get(hObject,'Value') == get(hObject,'Max'))
	handles.ch13_conv = 1.08;
else
	handles.ch13_conv = 32.5;
end

guidata(hObject, handles);

% --- Executes on button press in radiobutton14.
function radiobutton14_Callback(hObject, eventdata, handles)
get(hObject,'Value')

if (get(hObject,'Value') == get(hObject,'Max'))
	handles.ch14_conv = 1.27;
else
	handles.ch14_conv = 50.1;
end

guidata(hObject, handles);

% --- Executes on button press in radiobutton15.
function radiobutton15_Callback(hObject, eventdata, handles)
get(hObject,'Value')

if (get(hObject,'Value') == get(hObject,'Max'))
	handles.ch15_conv = 1.25;
else
	handles.ch15_conv = 37.4;
end

guidata(hObject, handles);

% --- Executes on button press in radiobutton16.
function radiobutton16_Callback(hObject, eventdata, handles)

get(hObject,'Value')

if (get(hObject,'Value') == get(hObject,'Max'))
	handles.ch16_conv = 1.15;
else
	handles.ch16_conv = 37.5;
end

guidata(hObject, handles);


% --- Executes on button press in radiobutton17.
function radiobutton17_Callback(hObject, eventdata, handles)
get(hObject,'Value')

if (get(hObject,'Value') == get(hObject,'Max'))
	handles.ch17_conv = 0;
else
	handles.ch17_conv = 37.8;
end

guidata(hObject, handles);


% --- Executes on button press in radiobutton18.
function radiobutton18_Callback(hObject, eventdata, handles)
get(hObject,'Value')

if (get(hObject,'Value') == get(hObject,'Max'))
	handles.ch18_conv = 0;
else
	handles.ch18_conv = 38.2;
end

guidata(hObject, handles);

% --- Executes on button press in radiobutton19.
function radiobutton19_Callback(hObject, eventdata, handles)
get(hObject,'Value')

if (get(hObject,'Value') == get(hObject,'Max'))
	handles.ch19_conv = 0;
else
	handles.ch19_conv = 32.6;
end

guidata(hObject, handles);

% --- Executes on button press in radiobutton20.
function radiobutton20_Callback(hObject, eventdata, handles)
get(hObject,'Value')

if (get(hObject,'Value') == get(hObject,'Max'))
	handles.ch20_conv = 0;
else
	handles.ch20_conv = 40.3;
end

guidata(hObject, handles);

% --- Executes on button press in radiobutton21.
function radiobutton21_Callback(hObject, eventdata, handles)
get(hObject,'Value')

if (get(hObject,'Value') == get(hObject,'Max'))
	handles.ch21_conv = 0;
else
	handles.ch21_conv = 27.2;
end

guidata(hObject, handles);

% --- Executes on button press in radiobutton22.
function radiobutton22_Callback(hObject, eventdata, handles)
get(hObject,'Value')

if (get(hObject,'Value') == get(hObject,'Max'))
	handles.ch22_conv = 0;
else
	handles.ch22_conv = 39.9;
end

guidata(hObject, handles);

% --- Executes on button press in radiobutton23.
function radiobutton23_Callback(hObject, eventdata, handles)
get(hObject,'Value')

if (get(hObject,'Value') == get(hObject,'Max'))
	handles.ch23_conv = 0;
else
	handles.ch23_conv = 39.1;
end

guidata(hObject, handles);

% --- Executes on button press in radiobutton24.
function radiobutton24_Callback(hObject, eventdata, handles)
get(hObject,'Value')

if (get(hObject,'Value') == get(hObject,'Max'))
	handles.ch24_conv = 0;
else
	handles.ch24_conv = 38.8;
end

guidata(hObject, handles);
%%%%==================================================================%%%
%%%%THIS SECTION IS FOR THE DATA ACQUISITION%%%%%%%%%

% --- Executes on button press in acquire.
function acquire_Callback(hObject, eventdata, handles)
% hObject    handle to acquire (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

AI_acq = analoginput('mcc',1);
numch = addchannel(AI_acq,0:15);
set(AI_acq,'SampleRate',100)
set(AI_acq,'SamplesPerTrigger',500)
Start(AI_acq)
wait(AI_acq,15);
handles.data_acq = getdata(AI_acq);
data_acq=handles.data_acq;

data1_v=mean(data_acq(:,1));
handles.d1=43.5*(data1_v-handles.cal1);
guidata(hObject, handles);

data2_v=mean(data_acq(:,2));
handles.d2=43.5*(data2_v-handles.cal2);
guidata(hObject, handles);

data3_v=mean(data_acq(:,3));
handles.d3=33.1*(data3_v-handles.cal3);
guidata(hObject, handles);

data4_v=mean(data_acq(:,4));
handles.d4=34.8*(data4_v-handles.cal4);
guidata(hObject, handles);

data5_v=mean(data_acq(:,5));
handles.d5=33.9*(data5_v-handles.cal5);
guidata(hObject, handles);

data6_v=mean(data_acq(:,6));
handles.d6=41.7*(data6_v-handles.cal6);
guidata(hObject, handles);

data7_v=mean(data_acq(:,7));
handles.d7=37.4*(data7_v-handles.cal7);
guidata(hObject, handles);

data8_v=mean(data_acq(:,8));
handles.d8=36.4*(data8_v-handles.cal8);
guidata(hObject, handles);

data9_v=mean(data_acq(:,9));
handles.d9=75.9*(data9_v-handles.cal9);
guidata(hObject, handles);

data10_v=mean(data_acq(:,10));
handles.d10=40.3*(data10_v-handles.cal10);
guidata(hObject, handles);

data11_v=mean(data_acq(:,11));
handles.d11=32.6*(data11_v-handles.cal11);
guidata(hObject, handles);

data12_v=mean(data_acq(:,12));
handles.d12=34.5*(data12_v-handles.cal12);
guidata(hObject, handles);

data13_v=mean(data_acq(:,13));
handles.d13=32.5*(data13_v-handles.cal13);
guidata(hObject, handles);

data14_v=mean(data_acq(:,14));
handles.d14=50.1*(data14_v-handles.cal14);
guidata(hObject, handles);

data15_v=mean(data_acq(:,15));
handles.d15=37.4*(data15_v-handles.cal15);
guidata(hObject, handles);

data16_v=mean(data_acq(:,16));
handles.d16=37.5*(data16_v-handles.cal16);
guidata(hObject, handles);

dat_1=[handles.d1 handles.d2 handles.d3 handles.d4 handles.d5 handles.d6 handles.d7 handles.d8 handles.d9 handles.d10 handles.d11 handles.d12 handles.d13 handles.d14 handles.d15 handles.d16];

handles.dat_1=dat_1;

guidata(hObject, handles);

delete(AI_acq)
clear AI_acq

% --- Executes on button press in acquire2.
function acquire2_Callback(hObject, eventdata, handles)
% hObject    handle to acquire2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

AI_acq2 = analoginput('mcc',1);
numch = addchannel(AI_acq2,0:15);
set(AI_acq2,'SampleRate',100)
set(AI_acq2,'SamplesPerTrigger',500)
Start(AI_acq2)
wait(AI_acq2,15);
handles.data_acq2 = getdata(AI_acq2);
data_acq2=handles.data_acq2;

data17_v=mean(data_acq2(:,5));
handles.d17=37.8*(data17_v-handles.cal17);
guidata(hObject, handles);

data18_v=mean(data_acq2(:,6));
handles.d18=38.2*(data18_v-handles.cal18);
guidata(hObject, handles);

data19_v=mean(data_acq2(:,7));
handles.d19=32.6*(data19_v-handles.cal19);
guidata(hObject, handles);

data20_v=mean(data_acq2(:,8));
handles.d20=40.3*(data20_v-handles.cal20);
guidata(hObject, handles);

data21_v=mean(data_acq2(:,13));
handles.d21=27.2*(data21_v-handles.cal21);
guidata(hObject, handles);

data22_v=mean(data_acq2(:,14));
handles.d22=39.9*(data22_v-handles.cal22);
guidata(hObject, handles);

data23_v=mean(data_acq2(:,15));
handles.d23=39.1*(data23_v-handles.cal23);
guidata(hObject, handles);

data24_v=mean(data_acq2(:,16));
handles.d24=38.8*(data24_v-handles.cal24);
guidata(hObject, handles);

dat_2=[handles.d17 handles.d18 handles.d19 handles.d20 handles.d21 handles.d22 handles.d23 handles.d24];

handles.dat_2=dat_2;
guidata(hObject, handles);
delete(AI_acq2)
clear AI_acq2

% --- Executes on button press in plot_data.
function plot_data_Callback(hObject, eventdata, handles)
% hObject    handle to plot_data (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

dat=[handles.dat_1 handles.dat_2];

bar(handles.data,dat);
xlabel(handles.data,'Location')
ylabel(handles.data,'Force [psi]')
title(['Subject-' num2str(handles.subject)])
set(gca,'xlim',[1 24])



figure
bar(dat);
xlabel('Location')
ylabel('Pressure [psi]')
title(['Subject-' num2str(handles.subject)])
set(gca,'xlim',[1 24])
saveas(gcf,['Subject_' num2str(handles.subject)],'jpg');

handles.avg=mean(dat);
guidata(hObject, handles);

handles.std=std(dat);
guidata(hObject, handles);

handles.min=min(dat);
guidata(hObject, handles);

handles.max=max(dat);
guidata(hObject, handles);


% --- Executes on button press in save.
function save_Callback(hObject, eventdata, handles)
% hObject    handle to save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

sub = cellstr(handles.subject);
sport = cellstr(handles.sport);
position = cellstr(handles.Position);
make = cellstr(handles.make);
model = cellstr(handles.model);
size = cellstr(handles.size);
circum = handles.circum;
length = handles.length;
width = handles.width;
height = handles.height;

y = [sub, sport, position, make, model, size, circum, length, width, height, handles.d1, handles.d2, handles.d3, handles.d4, handles.d5, handles.d6, handles.d7, handles.d8, handles.d9, handles.d10, handles.d11, handles.d12, handles.d13, handles.d14, handles.d15, handles.d16, handles.d17, handles.d18, handles.d19, handles.d20, handles.d21, handles.d22, handles.d23, handles.d24, handles.avg, handles.stddev, handles.min, handles.max];


%%Save the calibration data as an excel file [in volts]
%column={'Sensor 1 [v]','Sensor 2 [v]', 'Sensor 3 [v]', 'Sensor 4 [v]', 'Sensor 5 [v]', 'Sensor 6 [v]', 'Sensor 7 [v]', 'Sensor 8 [v]', 'Sensor 9 [v]', 'Sensor 10 [v]', 'Sensor 11 [v]','Sensor 12 [v]','Sensor 13 [v]','Sensor 14 [v]','Sensor 15 [v]','Sensor 16 [v]'};  
%xlswrite(['Subject_' num2str(handles.subject)],column,'calibration','A1');
%xlswrite(['Subject_' num2str(handles.subject)],handles.data_cal,'calibration','A2');

%%Save the raw acquired data in an excel fil [in volts]
%xlswrite(['Subject_' num2str(handles.subject)],column,'data','A1');
%xlswrite(['Subject_' num2str(handles.subject)],handles.data_acq,'data','A2');

%%%Writing the summary excel file.
header={'Subject','Sport','Position','Helmet Make','Helmet Model','Helmet Size','Circumference','Length','Width','Height','Position 1','Position 2','Position 3','Position 4','Position 5','Position 6','Position 7','Position 8','Position 9','Position 10','Position 11','Position 12','Position 13','Position 14','Position 15','Position 16', 'Position 17', 'Position 18', 'Position 19', 'Position 20', 'Position 21', 'Position 22', 'Position 23', 'Position 24', 'Average','Standard Dev','Minimum','Maximum'};
xlswrite('TrialImpactorTesting.xls',header,'summary','A1');
xlswrite('TrialImpactorTesting.xls',y,'summary','A5');





















