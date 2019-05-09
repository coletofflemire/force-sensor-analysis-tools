function varargout = comparisonGUI(varargin)
% COMPARISONGUI MATLAB code for comparisonGUI.fig
%      COMPARISONGUI, by itself, creates a new COMPARISONGUI or raises the existing
%      singleton*.
%
%      H = COMPARISONGUI returns the handle to a new COMPARISONGUI or the handle to
%      the existing singleton*.
%
%      COMPARISONGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in COMPARISONGUI.M with the given input arguments.
%
%      COMPARISONGUI('Property','Value',...) creates a new COMPARISONGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before comparisonGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to comparisonGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help comparisonGUI

% Last Modified by GUIDE v2.5 24-Jul-2018 13:54:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @comparisonGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @comparisonGUI_OutputFcn, ...
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


% --- Executes just before comparisonGUI is made visible.
function comparisonGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to comparisonGUI (see VARARGIN)

% Choose default command line output for comparisonGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes comparisonGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = comparisonGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function id_Callback(hObject, eventdata, handles)
% hObject    handle to id (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of id as text
%        str2double(get(hObject,'String')) returns contents of id as a double


% --- Executes during object creation, after setting all properties.
function id_CreateFcn(hObject, eventdata, handles)
% hObject    handle to id (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
id = str2double(get(handles.id, 'string'));
hl=xlsread('WLFieldStudy.xlsx',['E' int2str(14*(id-1)+5) ':' 'E' int2str(14*(id-1)+5)]);
hb=xlsread('WLFieldStudy.xlsx',['E' int2str(14*(id-1)+7) ':' 'E' int2str(14*(id-1)+7)]);
hh=xlsread('WLFieldStudy.xlsx',['E' int2str(14*(id-1)+9) ':' 'E' int2str(14*(id-1)+9)]);
[x,y,z] = sphere;      
x = 0.5*hl*x(11:end,:);     
y = 0.5*hb*y(11:end,:);    
z = 0.5*hh*z(11:end,:);   

cx = [3,8,6,8,5,3,4,2,3];
cy = [20,20,17,15,14,15,12,13,17];
cy2 = [2,2,5,7,8,7,10,9,5];

for i=1:5    
    rateCell=['M', 'P', 'S', 'V', 'Y'];
    rate=[rateCell(i) int2str(14*(id-1)+3) ':' rateCell(i) int2str(14*(id-1)+9)];
    
    ratings=xlsread('WLFieldStudy.xlsx',rate);
    r = zeros(size(z));

    r(cx(1),cy(1)) = ratings(1);
    r(cx(1),cy2(1)) = ratings(1);
    
    r(cx(2),cy(2)) = ratings(1);
    r(cx(2),cy2(2)) = ratings(1);
   
    r(cx(9),cy(9)) = ratings(2);
    r(cx(9),cy2(9)) = ratings(3);
    
    r(cx(3),cy(3)) = ratings(2);
    r(cx(3),cy2(3)) = ratings(3);
    
    r(cx(6),cy(6)) = ratings(2);
    r(cx(6),cy2(6)) = ratings(3);
    
    r(cx(4),cy(4)) = ratings(4);
    r(cx(4),cy2(4)) = ratings(4);

    r(cx(5),cy(5)) = ratings(4);
    r(cx(5),cy2(5)) = ratings(4);

    r(cx(7),cy(7)) = ratings(5);
    r(cx(7),cy(7)) = ratings(5);
    
    r(cx(8),cy(8)) = ratings(5);
    r(cx(8),cy2(8)) = ratings(5);

    rates = surf(x,y,z,r);
    rates.FaceColor = 'interp';
    caxis([1 5]);
    colorbar
    hold on
    xlabel('X');
    ylabel('Y');
    zlabel('Z');
    axis equal
    axes(handles.axes1);
    
    rangeCell=['N', 'Q', 'T', 'W', 'Z', 'AC'];
    range=[rangeCell(i) int2str(14*(id-1)+3) ':' rangeCell(i) int2str(14*(id-1)+11)];

    pressure=xlsread('WLFieldStudy.xlsx',range);
    c = zeros(size(z));
    for index=1:9
        c(cx(index),cy(index)) = pressure(index);
        c(cx(index),cy2(index)) = pressure(index);
    end
    s = surf(x,y,z,c);
    s.FaceColor = 'interp';
    caxis([0 15000]);
    colorbar
    hold on
    xlabel('X');
    ylabel('Y');
    zlabel('Z');
    axis equal
    axes(handles.axes2);
    
    picFile = ['WL' int2str(id) '_' int2str(i) '_comparison'];
    export_fig(sprintf(picFile));
    pause(0.5);
    clearvars s rates;
    cla(handles.axes1);
    cla(handles.axes2);
end
rate=['AB' int2str(14*(id-1)+3) ':AB' int2str(14*(id-1)+9)];
ratings=xlsread('WLFieldStudy.xlsx',rate);
    r = zeros(size(z));

    r(cx(1),cy(1)) = ratings(1);
    r(cx(1),cy2(1)) = ratings(1);
    
    r(cx(2),cy(2)) = ratings(1);
    r(cx(2),cy2(2)) = ratings(1);
   
    r(cx(9),cy(9)) = ratings(2);
    r(cx(9),cy2(9)) = ratings(3);
    
    r(cx(3),cy(3)) = ratings(2);
    r(cx(3),cy2(3)) = ratings(3);
    
    r(cx(6),cy(6)) = ratings(2);
    r(cx(6),cy2(6)) = ratings(3);
    
    r(cx(4),cy(4)) = ratings(4);
    r(cx(4),cy2(4)) = ratings(4);

    r(cx(5),cy(5)) = ratings(4);
    r(cx(5),cy2(5)) = ratings(4);

    r(cx(7),cy(7)) = ratings(5);
    r(cx(7),cy(7)) = ratings(5);
    
    r(cx(8),cy(8)) = ratings(5);
    r(cx(8),cy2(8)) = ratings(5);

    rates = surf(x,y,z,r);
    rates.FaceColor = 'interp';
    caxis([1 5]);
    colorbar
    hold on
    xlabel('X');
    ylabel('Y');
    zlabel('Z');
    axis equal
    axes(handles.axes1);
    
    range=['AC' int2str(14*(id-1)+3) ':AC' int2str(14*(id-1)+11)];

    pressure=xlsread('WLFieldStudy.xlsx',range);
    c = zeros(size(z));
    for index=1:9
        c(cx(index),cy(index)) = pressure(index);
        c(cx(index),cy2(index)) = pressure(index);
    end
    s = surf(x,y,z,c);
    s.FaceColor = 'interp';
    caxis([0 15000]);
    colorbar
    hold on
    xlabel('X');
    ylabel('Y');
    zlabel('Z');
    axis equal
    axes(handles.axes2);
    
    picFile = ['WL' int2str(id) '_6_comparison'];
    export_fig(sprintf(picFile));
    pause(0.5);
    clearvars s rates;
    
cla(handles.axes1);
cla(handles.axes2);
