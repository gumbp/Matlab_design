function varargout = d2(varargin)
% D2 MATLAB code for d2.fig
%      D2, by itself, creates a new D2 or raises the existing
%      singleton*.
%
%      H = D2 returns the handle to a new D2 or the handle to
%      the existing singleton*.
%
%      D2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in D2.M with the given input arguments.
%
%      D2('Property','Value',...) creates a new D2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before d2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to d2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help d2

% Last Modified by GUIDE v2.5 27-Nov-2020 23:17:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @d2_OpeningFcn, ...
                   'gui_OutputFcn',  @d2_OutputFcn, ...
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


% --- Executes just before d2 is made visible.
function d2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to d2 (see VARARGIN)

% Choose default command line output for d2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes d2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = d2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
ha=axes('units','normalized','pos',[0 0 1 1]);
uistack(ha,'down');
ii=imread('C:\Users\Mr.GAN\Desktop\m.png');
image(ii);
colormap gray
set(ha,'handlevisibility','off','visible','on');
