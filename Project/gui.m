function varargout = gui(varargin)
% GUI MATLAB code for gui.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui

% Last Modified by GUIDE v2.5 19-Dec-2022 14:48:07

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_OutputFcn, ...
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


% --- Executes just before gui is made visible.
function gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui (see VARARGIN)

% Choose default command line output for gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in img.
function img_Callback(hObject, eventdata, handles)
X = uigetfile('*.*');
global image;
global modified_img;
image = imread(X);
modified_img = image;
axes(handles.orginal);
imshow(image);

% --- Executes on button press in g_img.
function g_img_Callback(hObject, eventdata, handles)
global image;
global modified_img;
modified_img = rgb_to_gray(image);
axes(handles.modified);
imshow(modified_img);

% --- Executes on button press in bw_img.
function bw_img_Callback(hObject, eventdata, handles)
global modified_img;
rgb_gray(modified_img);
T = 125;
modified_img = rgb_to_binary(modified_img, T);
axes(handles.modified);
imshow(modified_img);

% --- Executes on button press in retrieve.
function retrieve_Callback(hObject, eventdata, handles)
global image;
global modified_img;
modified_img = image;
axes(handles.modified);
imshow(modified_img);


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in apply_change.
function apply_change_Callback(hObject, eventdata, handles)
% hObject    handle to apply_change (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function n_min_Callback(hObject, eventdata, handles)
% hObject    handle to n_min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n_min as text
%        str2double(get(hObject,'String')) returns contents of n_min as a double


% --- Executes during object creation, after setting all properties.
function n_min_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n_min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function n_max_Callback(hObject, eventdata, handles)
% hObject    handle to n_max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n_max as text
%        str2double(get(hObject,'String')) returns contents of n_max as a double


% --- Executes during object creation, after setting all properties.
function n_max_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n_max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function trans_value_Callback(hObject, eventdata, handles)
% hObject    handle to trans_value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of trans_value as text
%        str2double(get(hObject,'String')) returns contents of trans_value as a double


% --- Executes during object creation, after setting all properties.
function trans_value_CreateFcn(hObject, eventdata, handles)
% hObject    handle to trans_value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bright_val_Callback(hObject, eventdata, handles)
global bright_v
bright_v = str2double(get(handles.bright_val,'String'));


% --- Executes during object creation, after setting all properties.
function bright_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bright_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in apply.
function apply_Callback(hObject, eventdata, handles)
% hObject    handle to apply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in complement.
function complement_Callback(hObject, eventdata, handles)
global image;
global modified_img;
modified_img = complement(image);
axes(handles.modified);
imshow(modified_img);

% --- Executes on button press in ft.
function ft_Callback(hObject, eventdata, handles)
global image;
modified_img = ft(image);
axes(handles.modified);
imshow(modified_img);

% --- Executes on button press in sub.
function sub_Callback(hObject, eventdata, handles)
global bright_v;
global modified_img;
rgb_gray(modified_img);
bright_v = str2double(get(handles.bright_val,'String'));
modified_img = Brightness(modified_img, bright_v, 3);
axes(handles.modified);
imshow(modified_img);

% --- Executes on button press in div.
function div_Callback(hObject, eventdata, handles)
global bright_v;
global modified_img;
rgb_gray(modified_img);
bright_v = str2double(get(handles.bright_val,'String'));
modified_img = Brightness(modified_img, bright_v, 4);
axes(handles.modified);
imshow(modified_img);

% --- Executes on button press in add.
function add_Callback(hObject, eventdata, handles)
global bright_v;
global modified_img;
rgb_gray(modified_img);
bright_v = str2double(get(handles.bright_val,'String'));
modified_img = Brightness(modified_img, bright_v, 1);
axes(handles.modified);
imshow(modified_img);

% --- Executes on button press in multiply.
function multiply_Callback(hObject, eventdata, handles)
global bright_v;
global modified_img;
rgb_gray(modified_img);
bright_v = str2double(get(handles.bright_val,'String'));
modified_img = Brightness(modified_img, bright_v, 2);
axes(handles.modified);
imshow(modified_img);


function ps_Callback(hObject, eventdata, handles)
% hObject    handle to ps (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ps as text
%        str2double(get(hObject,'String')) returns contents of ps as a double


% --- Executes during object creation, after setting all properties.
function ps_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ps (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pp_Callback(hObject, eventdata, handles)
% hObject    handle to pp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pp as text
%        str2double(get(hObject,'String')) returns contents of pp as a double


% --- Executes during object creation, after setting all properties.
function pp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a_Callback(hObject, eventdata, handles)
% hObject    handle to a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a as text
%        str2double(get(hObject,'String')) returns contents of a as a double


% --- Executes during object creation, after setting all properties.
function a_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function b_Callback(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b as text
%        str2double(get(hObject,'String')) returns contents of b as a double


% --- Executes during object creation, after setting all properties.
function b_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function percent_Callback(hObject, eventdata, handles)
% hObject    handle to percent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of percent as text
%        str2double(get(hObject,'String')) returns contents of percent as a double


% --- Executes during object creation, after setting all properties.
function percent_CreateFcn(hObject, eventdata, handles)
% hObject    handle to percent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in noise_btn.
function noise_btn_Callback(hObject, eventdata, handles)
% hObject    handle to noise_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in histogram_btn.
function histogram_btn_Callback(hObject, eventdata, handles)
% hObject    handle to histogram_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in transformation_btn.
function transformation_btn_Callback(hObject, eventdata, handles)
% hObject    handle to transformation_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in edge_btn.
function edge_btn_Callback(hObject, eventdata, handles)
% hObject    handle to edge_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in sharping_btn.
function sharping_btn_Callback(hObject, eventdata, handles)
% hObject    handle to sharping_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in smoothing_btn.
function smoothing_btn_Callback(hObject, eventdata, handles)
% hObject    handle to smoothing_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in exit.
function exit_Callback(hObject, eventdata, handles)
closereq();

function rgb_gray(img)
[W, H, L] = size(img);
if (L ~= 1)
    img = rgb_to_gray(img);
end
