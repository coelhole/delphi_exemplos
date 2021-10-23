program INDY_BASE64TOFILE;

uses
  Forms,
  ufrm1 in 'ufrm1.pas' {Form1},
  ubase64tomemstream in 'ubase64tomemstream.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
