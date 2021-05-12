program TypeB_MessagingHub_MANAGER;

uses
  System.StartUpCopy,
  FMX.Forms,
  uFmxMain in '..\..\source\TypeB_MessagingHub_MANAGER\uFmxMain.pas' {fmxMain},
  uFmxUsers in '..\..\source\TypeB_MessagingHub_MANAGER\uFmxUsers.pas' {fmxUsers},
  uFmxControlPanel in '..\..\source\TypeB_MessagingHub_MANAGER\uFmxControlPanel.pas' {fmxControlPanel},
  MyLibrary.FormUtil in '..\..\lib\MyDelphiLibrary\source\MyLibrary.FormUtil.pas',
  uFmxLogin in '..\..\source\TypeB_MessagingHub_MANAGER\uFmxLogin.pas' {FmxLogin},
  MyLibrary.DataModuleMain in '..\..\lib\MyDelphiLibrary\source\MyLibrary.DataModuleMain.pas' {MyLibrary_DataModuleMain: TDataModule},
  MyLibrary.FormLogin in '..\..\lib\MyDelphiLibrary\source\FMX\FormLogin\MyLibrary.FormLogin.pas' {MyLibrary_FormLogin},
  uDmMain in '..\..\source\TypeB_MessagingHub_MANAGER\uDmMain.pas' {DmMain: TDataModule},
  MyLibrary.Core in '..\..\lib\MyDelphiLibrary\source\MyLibrary.Core.pas',
  MyLibrary.Session in '..\..\lib\MyDelphiLibrary\source\MyLibrary.Session.pas',
  MyLibrary.DMVCF.Connection in '..\..\lib\MyDelphiLibrary\source\DMVCFramework\Client\MyLibrary.DMVCF.Connection.pas',
  MyLibrary.UserLanguageStrings in '..\..\lib\MyDelphiLibrary\source\MyLibrary.UserLanguageStrings.pas';

{$R *.res}

begin
  Application.Initialize;
  DmMain := TDmMain.Create(nil);
  try
    Application.CreateForm(TfmxMain, fmxMain);
    Application.Run;
  finally
    DmMain.Free;
  end;
end.
