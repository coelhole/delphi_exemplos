program ONLYNUMBER_EDIT;

uses
  Forms,
  ufrmnaturalnumberedit in 'ufrmnaturalnumberedit.pas' {Form1},
  ufrmintegeredit in 'ufrmintegeredit.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
