program TypeB_MessagingHub_MANAGER;

uses
  System.StartUpCopy,
  FMX.Forms,
  uFmxMain in '..\..\source\uFmxMain.pas' {fmxMain},
  uFmxUsers in '..\..\source\uFmxUsers.pas' {fmxUsers},
  uFmxControlPanel in '..\..\source\uFmxControlPanel.pas' {fmxControlPanel},
  MyLibrary.FormUtil in '..\..\lib\MyDelphiLibrary\source\MyLibrary.FormUtil.pas',
  uFmxBaseLogin in '..\..\lib\MyDelphiLibrary\source\FMX\LoginForm\uFmxBaseLogin.pas' {FmxBaseLogin},
  uFmxLogin in '..\..\source\uFmxLogin.pas' {FmxLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFmxLogin, FmxLogin);
//  Application.CreateForm(TfmxMain, fmxMain);
  Application.Run;
end.
