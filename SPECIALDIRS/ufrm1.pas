unit ufrm1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ActiveX, ShlObj, Buttons;

type
  TForm1 = class(TForm)
    EdtDir: TLabeledEdit;
    CbxDirs: TComboBox;
    LblDir: TLabel;
    BtSair: TBitBtn;
    procedure BtSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CbxDirsChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dirconstants:array[0..15] of Integer;
  dirlabels:array[0..15] of String;
  Form1: TForm1;

implementation

{$R *.dfm}

function specialdir(const dirconst:Integer):string;
var
  Alloc: IMalloc;
  SpecialDir: PItemIdList;
  FBuf: array[0..MAX_PATH] of Char;
begin
  if SHGetMalloc(Alloc) = NOERROR then
  begin
    SHGetSpecialFolderLocation(Form1.Handle, dirconstants[dirconst], SpecialDir);
    SHGetPathFromIDList(SpecialDir, @FBuf[0]);
    Alloc.Free(SpecialDir);
    result:=string(FBuf);
  end;
end;

procedure TForm1.BtSairClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i:Integer;
begin
  CbxDirs.Clear;
  for i:=0 to 15 do
    CbxDirs.Items.Add(dirlabels[i]);
end;

procedure TForm1.CbxDirsChange(Sender: TObject);
begin
  EdtDir.Text:=specialdir(CbxDirs.ItemIndex);
end;

procedure constantes;
begin
  dirconstants[0]:=CSIDL_DESKTOP;         dirlabels[0]:='ÁREA DE TRABALHO';
  dirconstants[1]:=CSIDL_PERSONAL;        dirlabels[1]:='MEUS DOCUMENTOS';
  dirconstants[2]:=CSIDL_FAVORITES;       dirlabels[2]:='MEUS FAVORITOS';
  dirconstants[3]:=CSIDL_STARTMENU;       dirlabels[3]:='MENU INICIAR';
  dirconstants[4]:=CSIDL_PROGRAMS;        dirlabels[4]:='MENU INICIAR/PROGRAMAS';
  dirconstants[5]:=CSIDL_STARTUP;         dirlabels[5]:='MENU INICIAR/PROGRAMAS/INICIAR';
  dirconstants[6]:=CSIDL_FONTS;           dirlabels[6]:='FONTES DO WINDOWS';
  dirconstants[7]:=CSIDL_RECENT;          dirlabels[7]:='RECENTES';
  dirconstants[8]:=CSIDL_SENDTO;          dirlabels[8]:='ENVIAR PARA';
  dirconstants[9]:=CSIDL_NETHOOD;         dirlabels[9]:='ATALHOS DE REDE';
  dirconstants[10]:=CSIDL_TEMPLATES;      dirlabels[10]:='TEMPLATES';
  dirconstants[11]:=CSIDL_APPDATA;        dirlabels[11]:='DADOS DE APLICATIVOS';
  dirconstants[12]:=CSIDL_PRINTHOOD;      dirlabels[12]:='ATALHOS DE IMPRESSORAS';
  dirconstants[13]:=CSIDL_INTERNET_CACHE; dirlabels[13]:='CACHE INTERNET';
  dirconstants[14]:=CSIDL_COOKIES;        dirlabels[14]:='COOKIES INTERNET';
  dirconstants[15]:=CSIDL_HISTORY;        dirlabels[15]:='HISTÓRICO';
end;

initialization
  constantes;
end.
