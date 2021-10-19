unit ufrm1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons,
  IdBaseComponent, IdCoder, IdCoder3to4, IdCoderMIME;

type
  TForm1 = class(TForm)
    OpenFileDlg: TOpenDialog;
    EdtArquivo: TLabeledEdit;
    BtOpenDir: TSpeedButton;
    BtConverter: TButton;
    MemoConteudoBase64: TMemo;
    BtSair: TBitBtn;
    procedure BtOpenDirClick(Sender: TObject);
    procedure EdtArquivoChange(Sender: TObject);
    procedure BtSairClick(Sender: TObject);
    procedure BtConverterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function tobase64(filename:string):string;
var
  Base64Encoder:TIdEncoderMIME;
  MemStream:TMemoryStream;
begin
  MemStream:=TMemoryStream.Create;
  try
    Base64Encoder:=TIdEncoderMIME.Create(nil);
    try
      MemStream.LoadFromFile(filename);
      result:=Base64Encoder.Encode(MemStream);
    finally
      Base64Encoder.Free;
    end;
  finally
    MemStream.Free;
  end;
end;

procedure TForm1.BtOpenDirClick(Sender: TObject);
begin
  if OpenFileDlg.Execute then
    EdtArquivo.Text:=OpenFileDlg.FileName;
end;

procedure TForm1.EdtArquivoChange(Sender: TObject);
begin
  BtConverter.Enabled:=EdtArquivo.Text<>'';
end;

procedure TForm1.BtSairClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.BtConverterClick(Sender: TObject);
begin
  MemoConteudoBase64.Clear;
  MemoConteudoBase64.Text:=tobase64(EdtArquivo.Text);
end;

end.
