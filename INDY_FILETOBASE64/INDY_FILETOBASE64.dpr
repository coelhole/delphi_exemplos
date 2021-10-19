program INDY_FILETOBASE64;

uses
  Forms,
  ufrm1 in 'ufrm1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
