unit ufrmdownload;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, httpsend;

function download(const url:string; out memstream:TMemoryStream):boolean;overload;
function download(const url,dir:string; const sobrescrever:boolean=true):boolean;overload;

type
  TFrmDownload = class(TForm)
    EdtArquivo: TLabeledEdit;
    BtDownload: TButton;
    procedure BtDownloadClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDownload: TFrmDownload;

implementation

{$R *.dfm}

function download(const url:string; out memstream:TMemoryStream):boolean;
var
  httpRequest:THttpSend;
begin
  httpRequest:=THttpSend.create;
  try
    result:=httpRequest.httpMethod('GET',url) and (httpRequest.resultCode=200);
    memstream:=TMemoryStream.create;
    if result then
      memstream.copyFrom(httpRequest.document,httpRequest.document.size);
  finally
    httpRequest.free;
  end;
end;

function download(const url,dir:string; const sobrescrever:boolean=true):boolean;

  function filename(const url,dir:string):string;
  var
    i,pos:integer;
  begin
    if dir[length(dir)]='\' then
      result:=dir
    else
      result:=dir+'\';
    for i:=1 to length(url) do
      if url[i]='/' then
        pos:=i;
    result:=result+copy(url,pos+1,length(url)-pos);
  end;

var
  memstream:TMemoryStream;
  arquivo:string;
begin
  result:=false;
  if not directoryexists(dir) then
    raise exception.create('Diretório ' + dir + ' não encontrado');
  arquivo:=filename(url,dir);
  if fileexists(arquivo) and (not sobrescrever) then
    exit;
  result:=download(url,memstream);
  if result then begin
    memstream.saveToFile(arquivo);
    memstream.free;
    result:=fileexists(arquivo);
  end;
end;

procedure TFrmDownload.BtDownloadClick(Sender: TObject);
begin
  download(EdtArquivo.Text,'C:\Users\Administrador\Desktop');
end;

end.
