    function varargout = aplikasi_penjualan_mobil(varargin)
% APLIKASI_PENJUALAN_MOBIL MATLAB code for aplikasi_penjualan_mobil.fig
%      APLIKASI_PENJUALAN_MOBIL, by itself, creates a new APLIKASI_PENJUALAN_MOBIL or raises the existing
%      singleton*.
%
%      H = APLIKASI_PENJUALAN_MOBIL returns the handle to a new APLIKASI_PENJUALAN_MOBIL or the handle to
%      the existing singleton*.
%
%      APLIKASI_PENJUALAN_MOBIL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in APLIKASI_PENJUALAN_MOBIL.M with the given input arguments.
%
%      APLIKASI_PENJUALAN_MOBIL('Property','Value',...) creates a new APLIKASI_PENJUALAN_MOBIL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before aplikasi_penjualan_mobil_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to aplikasi_penjualan_mobil_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help aplikasi_penjualan_mobil

% Last Modified by GUIDE v2.5 15-Jan-2022 08:41:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @aplikasi_penjualan_mobil_OpeningFcn, ...
                   'gui_OutputFcn',  @aplikasi_penjualan_mobil_OutputFcn, ...
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


% --- Executes just before aplikasi_penjualan_mobil is made visible.
function aplikasi_penjualan_mobil_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to aplikasi_penjualan_mobil (see VARARGIN)

% Choose default command line output for aplikasi_penjualan_mobil
handles.output = hObject;
movegui(hObject,'center');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes aplikasi_penjualan_mobil wait for user response (see UIRESUME)
% uiwait(handles.figure1);
background = axes('unit','normalized','position',[0 0  1 1 ]);
cover = imread('toyota.jpg'); imagesc(cover);
set(background,'handlevisibility','on','visible','on');
uistack(background,'bottom');
axes(handles.axes1);
image(imread('blank.png'));
grid off;
axis off;

% --- Outputs from this function are returned to the command line.
function varargout = aplikasi_penjualan_mobil_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in Pilihan_popupmenu.
function Pilihan_popupmenu_Callback(hObject, eventdata, handles)
% hObject    handle to Pilihan_popupmenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Pilihan_popupmenu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Pilihan_popupmenu
pilihan = get(handles.Pilihan_popupmenu,'value');

axes(handles.axes1);
switch pilihan
    case 1 
        Gambar = imread('blank.png');
        set(handles.Keterangan_text,'string', 'Opsi yang anda pilih tidak tersedia');

    case 2
        Gambar = imread('rush.png');
        set(handles.Keterangan_text,'string',{'Nama : Toyota Rush'
            'Tipe      : 2NR-VE DOHC Dual VVTi'
            'Transmsi  : 5 Speed'
            'Kapasitas : 1.496 cc'
            'Tahun     : 2018'
            'Harga     : Rp 253,55 juta.'
            
            })
    case 3
        Gambar = imread('innova.png');
        set(handles.Keterangan_text,'string',{'Nama : Toyota Kijang Innova'
            'Tipe      : 2.4L 2GD-FTV DOHC VNT Intercooler'
            'Transmisi : 6 Speed'
            'Kapasitas : 2393 cc'
            'Tahun     : 2018'
            'Harga     : Rp. 302.000.000'});
    case 4 
        Gambar = imread('avanza.png');
        set(handles.Keterangan_text,'string',{'Nama : Toyota Avanza'
           'Tipe : DOHC, Dual VVT-i, 4-silinder segaris'
           'Transmisi : 4 Speed'
           'Kapasitas : 1.329 cc'
           'Tahun : 2019'
           'Harga : IDR. 221.250.000'});
    case 5
        Gambar = imread('alphard.png');
        set(handles.Keterangan_text,'string',{'Nama : Toyota Alphard'
           'Tipe : 2.5L 2AR-FE DOHC Dual VVT-1'
           'Transimisi : 6 Speed'
           'Kapasitas : 2494 cc'
           'Tahun : 2018'
           'Harga : Rp 904.700.000' 
        });
end
imshow(Gambar);

% --- Executes during object creation, after setting all properties.
function Pilihan_popupmenu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Pilihan_popupmenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Keluar_pushbutton.
function Keluar_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to Keluar_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

pilihan_keluar = questdlg('Apakah anda ingin menutup program?', ...
 'Menutup Program', ...
 'Ya','Tidak','Tidak');
% Handle response
switch pilihan_keluar
    case 'Ya'
        close;
    case 'Tidak'
        return;
end


% --- Executes on button press in Back_To_Home_pushbutton.
function Back_To_Home_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to Back_To_Home_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close
Beranda

% --------------------------------------------------------------------
function Home_Callback(hObject, eventdata, handles)
% hObject    handle to Home (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Aksi_Callback(hObject, eventdata, handles)
% hObject    handle to Aksi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Keluar_Callback(hObject, eventdata, handles)
% hObject    handle to Keluar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close


% --------------------------------------------------------------------
function Profil_Mobil_Callback(hObject, eventdata, handles)
% hObject    handle to Profil_Mobil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cb1 = get(handles.Profil_Mobil,'Value');
if cb1
    set(handles.Keterangan_text,'String','dipilih');
else
     set(handles.Keterangan_text,'String','abcd');
end
% --------------------------------------------------------------------
function Take_Kamera_Callback(hObject, eventdata, handles)
% hObject    handle to Take_Kamera (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_9_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Beranda_Callback(hObject, eventdata, handles)
% hObject    handle to Beranda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Menu_Centang_Callback(hObject, eventdata, handles)
% hObject    handle to Menu_Centang (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Menu_Option_Callback(hObject, eventdata, handles)
% hObject    handle to Menu_Option (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes2
