function varargout = Robotica(varargin)
% ROBOTICA M-file for Robotica.fig
%      ROBOTICA, by itself, creates a new ROBOTICA or raises the existing
%      singleton*.
%
%      H = ROBOTICA returns the handle to a new ROBOTICA or the handle to
%      the existing singleton*.
%
%      ROBOTICA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ROBOTICA.M with the given input arguments.
%
%      ROBOTICA('Property','Value',...) creates a new ROBOTICA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Robotica_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Robotica_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Robotica

% Last Modified by GUIDE v2.5 27-Dec-2012 13:23:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Robotica_OpeningFcn, ...
                   'gui_OutputFcn',  @Robotica_OutputFcn, ...
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


% --- Executes just before Robotica is made visible.
function Robotica_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Robotica (see VARARGIN)
set(handles.theta,'Enable','off');
set(handles.Thetas,'Visible','off');
% Choose default command line output for Robotica
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Robotica wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Robotica_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function elo_Callback(hObject, eventdata, handles)
% hObject    handle to elo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of elo as text
%        str2double(get(hObject,'String')) returns contents of elo as a double


% --- Executes during object creation, after setting all properties.
function elo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to elo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function theta_Callback(hObject, eventdata, handles)
% hObject    handle to theta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta as text
%        str2double(get(hObject,'String')) returns contents of theta as a double


% --- Executes during object creation, after setting all properties.
function theta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function d_Callback(hObject, eventdata, handles)
% hObject    handle to d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d as text
%        str2double(get(hObject,'String')) returns contents of d as a double


% --- Executes during object creation, after setting all properties.
function d_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d (see GCBO)
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



function alfa_Callback(hObject, eventdata, handles)
% hObject    handle to alfa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of alfa as text
%        str2double(get(hObject,'String')) returns contents of alfa as a double


% --- Executes during object creation, after setting all properties.
function alfa_CreateFcn(hObject, eventdata, handles)
% hObject    handle to alfa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    Tabela=(get(handles.TabelaRot, 'String'));
    tam=size(Tabela,1)-1;
    Px=zeros(1,tam);
    Py=zeros(1,tam);
    Pz=zeros(1,tam);

    for i=1:tam
        Mat=cell2mat(Tabela(i+1));
        a=((Mat));
        Temp=textscan(a, '%f');
        Temp2=textscan(a, '%s');
        Elo(i,:)=[cell2mat(Temp)' sym(cell2mat(Temp2{1,1}(5)))];
    end
    T=Transformacao(Elo(1,:));
    for i=2:tam
        T=T*Transformacao(Elo(i,:));
    end
    
    T=simplify(T);
    Ref = [str2double(get(handles.Px , 'String'));str2double(get(handles.Py , 'String'));str2double(get(handles.Pz , 'String'))];
    angulos=PSO(T,Ref,tam);
    theta1=angulos(1)*pi/180;
    theta2=angulos(2)*pi/180;
    theta3=angulos(3)*pi/180;
    eval(T)
    STR = get(handles.TabelaRot, 'String');
    set(handles.Thetas,'Visible','on');
    for i=1:eval(Elo(end,1))
        a=STR(i+1);
        a=cell2mat(STR(i+1));
        a=a(1:end-6);
        STR(i+1) = cellstr(num2str(angulos(i)));
    end
    STR=STR(2:end);
    
    Elo(:,end)=angulos'*pi/180;
    Elo = eval(Elo);  
%     plot3(Px,Py,Pz)
    t=0:0.1:5;
    if(isempty(get(handles.Thetas,'String')))
        Vec= [zeros(1,tam); angulos];
    else
        a=get(handles.Thetas, 'String');
        for i=1:tam
            angulosIn(i)=str2num(cell2mat(a(i)));
        end
        Vec= [angulosIn; angulos];
    end
    set(handles.Thetas, 'String' , STR);
    Y=GeradorTrajetoria(t,Vec,2);
    axis([0,5*Ref(1),0,5*Ref(2)])
    for j=1:51
        Elo(:,end)=Y(:,j)*pi/180;
        T=Transformacao(Elo(1,:));
        Px(1)=T(1,end);
        Py(1)=T(2,end);
        Pz(1)=T(3,end);

        for i=2:tam
            T=T*Transformacao(Elo(i,:));
            Px(i)=T(1,end);
            Py(i)=T(2,end);
            Pz(i)=T(3,end);
        end  
        plot(Px,Py)
        pause(0.1)
    end
% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    Elo = get(handles.elo , 'String');
    Theta = get(handles.theta , 'String');
    D = get(handles.d , 'String');
    A = get(handles.a , 'String');
    alfa = get(handles.alfa , 'String');
    
    
    if(str2double(Elo)+1>size(get((handles.TabelaRot),'String'),1))
        STR = [get(handles.TabelaRot, 'String');...
            Elo blanks(20-length(Elo))  D blanks(48-length(Theta))...
            A blanks(38-length(D)) alfa blanks(50-length(D))  [Theta Elo]];
        set(handles.TabelaRot, 'String' , STR);
    elseif(str2double(Elo)+1<= size(get((handles.TabelaRot),'String'),1))
        STR = get(handles.TabelaRot, 'String');
        STR(str2double(Elo)+1) = cellstr([Elo blanks(20-length(Elo))  D blanks(48-length(Theta))...
            A blanks(38-length(D)) alfa blanks(50-length(D))  [Theta Elo]]);
        set(handles.TabelaRot, 'String' , STR);
    end

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over pushbutton2.
function pushbutton2_ButtonDownFcn(hObject, eventdata, handles)    
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function Px_Callback(hObject, eventdata, handles)
% hObject    handle to Px (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Px as text
%        str2double(get(hObject,'String')) returns contents of Px as a double


% --- Executes during object creation, after setting all properties.
function Px_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Px (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Pz_Callback(hObject, eventdata, handles)
% hObject    handle to Pz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Pz as text
%        str2double(get(hObject,'String')) returns contents of Pz as a double


% --- Executes during object creation, after setting all properties.
function Pz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Pz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Py_Callback(hObject, eventdata, handles)
% hObject    handle to Py (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Py as text
%        str2double(get(hObject,'String')) returns contents of Py as a double


% --- Executes during object creation, after setting all properties.
function Py_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Py (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
