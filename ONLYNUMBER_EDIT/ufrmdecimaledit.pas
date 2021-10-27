unit ufrmdecimaledit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, StrUtils;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    fTeclaAceita:boolean;
    fSinal:boolean;
    fDecimal:boolean;
    fSeparadorDecimal:char;
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Edit1KeyPress(Sender: TObject; var Key: Char);
var
  pos,pos0:integer;
begin
  //sinal
  if (not fSinal) and (key in ['+','-']) and (Edit1.SelStart=0) then begin
    Edit1.Text:=key+Edit1.Text;
    Edit1.SelStart:=1;
  end else
  //separador decimal
  if (not fDecimal) and (key=fSeparadorDecimal) then begin
    pos:=Edit1.SelStart;
    if fSinal then pos0:=1 else pos0:=0;
    if pos>pos0 then begin
      Edit1.Text:=Copy(Edit1.Text,1,pos)+fSeparadorDecimal+Copy(Edit1.Text,pos+1,Length(Edit1.Text)-pos);
      Edit1.SelStart:=pos+1;
    end;
  end;
  if not fTeclaAceita then key:=#0;
  fSinal:=(Length(Edit1.Text)>0) and (Edit1.Text[1] in ['+','-']);
  fDecimal:=AnsiContainsText(Edit1.Text, fSeparadorDecimal);
end;

procedure TForm3.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  fTeclaAceita:=key in [8{BACKSPACE},10{ENTER},37{LEFTARROW},39{RIGHTARROW},46{DELETE},48..57{DIGITS}];
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  fSeparadorDecimal:=',';
end;

end.
