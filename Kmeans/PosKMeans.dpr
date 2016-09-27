program PosKMeans;

uses
  Vcl.Forms,
  kMeans in 'kMeans.pas' {Form36};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm36, Form36);
  Application.Run;
end.
