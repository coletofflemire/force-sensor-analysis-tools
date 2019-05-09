%%%%%%%%%%%%% TAKES TWO NUMBERS AND AVERAGES THEM, IF MORE THAN 10%
%%%%%%%%%%%%% DIFFERENCE PROMPTS FOR THIRD NUMBER
function varargout = ruleOfThree(varargin)
% RULEOFTHREE MATLAB code for ruleOfThree.fig
%      RULEOFTHREE, by itself, creates a new RULEOFTHREE or raises the existing
%      singleton*.
%
%      H = RULEOFTHREE returns the handle to a new RULEOFTHREE or the handle to
%      the existing singleton*.
%
%      RULEOFTHREE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RULEOFTHREE.M with the given input arguments.
%
%      RULEOFTHREE('Property','Value',...) creates a new RULEOFTHREE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ruleOfThree_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ruleOfThree_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ruleOfThree

% Last Modified by GUIDE v2.5 07-May-2018 11:20:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ruleOfThree_OpeningFcn, ...
                   'gui_OutputFcn',  @ruleOfThree_OutputFcn, ...
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


% --- Executes just before ruleOfThree is made visible.
function ruleOfThree_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ruleOfThree (see VARARGIN)

% Choose default command line output for ruleOfThree
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ruleOfThree wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ruleOfThree_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

m1 = str2double(get(handles.meas1, 'string'));
m2 = str2double(get(handles.meas2, 'string'));
diff = abs(m1-m2)*2/(m1+m2);
if diff < 0.1
    format long
    ans = (m1+m2)/2;
    set(handles.answer, 'string', ans);
end
if diff >= 0.1
    set(handles.notice, 'string', 'Take one more measurement');
end

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA
m1 = str2double(get(handles.meas1, 'string'));
m2 = str2double(get(handles.meas2, 'string'));
m3 = str2double(get(handles.meas3, 'string'));
format long
ans = (m1+m2+m3)/3;
set(handles.answer, 'string', ans);
ans

function answer_Callback(hObject, eventdata, handles)
% hObject    handle to answer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of answer as text
%        str2double(get(hObject,'String')) returns contents of answer as a double


% --- Executes during object creation, after setting all properties.
function answer_CreateFcn(hObject, eventdata, handles)
% hObject    handle to answer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function notice_Callback(hObject, eventdata, handles)
% hObject    handle to notice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of notice as text
%        str2double(get(hObject,'String')) returns contents of notice as a double


% --- Executes during object creation, after setting all properties.
function notice_CreateFcn(hObject, eventdata, handles)
% hObject    handle to notice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function meas1_Callback(hObject, eventdata, handles)
% hObject    handle to meas1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of meas1 as text
%        str2double(get(hObject,'String')) returns contents of meas1 as a double


% --- Executes during object creation, after setting all properties.
function meas1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to meas1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function meas2_Callback(hObject, eventdata, handles)
% hObject    handle to meas2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of meas2 as text
%        str2double(get(hObject,'String')) returns contents of meas2 as a double


% --- Executes during object creation, after setting all properties.
function meas2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to meas2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function meas3_Callback(hObject, eventdata, handles)
% hObject    handle to meas3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of meas3 as text
%        str2double(get(hObject,'String')) returns contents of meas3 as a double


% --- Executes during object creation, after setting all properties.
function meas3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to meas3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
% hObject    handle to clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.answer, 'string', ' ');
set(handles.notice, 'string', '<<<<<<');
set(handles.meas1, 'string', ' ');
set(handles.meas2, 'string', ' ');
set(handles.meas3, 'string',  ' ');
