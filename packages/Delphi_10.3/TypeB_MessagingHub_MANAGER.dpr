program TypeB_MessagingHub_MANAGER;

uses
  System.StartUpCopy,
  FMX.Forms,
  uFmxMain in '..\..\source\uFmxMain.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
