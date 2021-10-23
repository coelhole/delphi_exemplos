unit ufrm1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ubase64tomemstream;

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
