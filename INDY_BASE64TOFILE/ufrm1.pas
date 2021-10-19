unit ufrm1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, IdBaseComponent, IdCoder, IdCoder3to4,
  IdCoderMIME;

type
  TForm1 = class(TForm)
    MemoBase64String: TMemo;
    LblBase64String: TLabel;
    BtSair: TBitBtn;
    BtSalvar: TBitBtn;
    SaveDlg: TSaveDialog;
    procedure BtSairClick(Sender: TObject);
    procedure BtSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function base64toMemoryStream(const base64string:string; out error:string):TMemoryStream;
var
  Decoder:TIdDecoderMIME;
begin
  try
    Decoder := TIdDecoderMIME.Create(nil);
    try
      result:=TMemoryStream.Create;
      Decoder.DecodeStream(base64string,result);
    finally
      Decoder.Free;
    end;
  except
    on E:Exception do
      error:=E.ClassName+#13#10+E.Message;
  end;
end;

procedure TForm1.BtSairClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.BtSalvarClick(Sender: TObject);
var
  memstrm:TMemoryStream;
  err:string;
begin
  memstrm:=base64toMemoryStream(MemoBase64String.Text,err);
  if err<>'' then
    ShowMessage(err)
  else if SaveDlg.Execute then memstrm.SaveToFile(SaveDlg.FileName);
  if assigned(memstrm) then memstrm.Free;
end;

end.
