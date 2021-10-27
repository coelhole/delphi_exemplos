program ONLYNUMBER_EDIT;

uses
  Forms,
  ufrmnaturalnumberedit in 'ufrmnaturalnumberedit.pas' {Form1},
  ufrmintegeredit in 'ufrmintegeredit.pas' {Form2},
  ufrmdecimaledit in 'ufrmdecimaledit.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
