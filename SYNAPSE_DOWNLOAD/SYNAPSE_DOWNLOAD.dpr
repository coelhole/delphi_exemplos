program SYNAPSE_DOWNLOAD;

uses
  Forms,
  ufrmdownload in 'ufrmdownload.pas' {FrmDownload};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmDownload, FrmDownload);
  Application.Run;
end.
