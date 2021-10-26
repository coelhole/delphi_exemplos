unit ufrmintegeredit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    fTeclaAceita:boolean;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key in ['+','-'] then begin
    if Edit1.SelStart=0 then begin
      Edit1.Text:=key+Edit1.Text;
      Edit1.SelStart:=1;
    end;
  end;
  if not fTeclaAceita then key:=#0;
end;

procedure TForm2.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  fTeclaAceita:=key in [8{BACKSPACE},10{ENTER},37{LEFTARROW},39{RIGHTARROW},46{DELETE},48..57{DIGITS}];
end;

end.
