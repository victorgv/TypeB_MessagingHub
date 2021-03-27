program TypeB_MessagingHub_MANAGER;

uses
  System.StartUpCopy,
  FMX.Forms,
  uFmxMain in '..\..\source\uFmxMain.pas' {fmxMain},
  uFmxUsers in '..\..\source\uFmxUsers.pas' {fmxUsers},
  uFmxControlPanel in '..\..\source\uFmxControlPanel.pas' {fmxControlPanel},
  MyLibrary.FormUtil in '..\..\lib\MyDelphiLibrary\source\MyLibrary.FormUtil.pas',
  uFmxLogin in '..\..\source\uFmxLogin.pas' {FmxLogin},
  MyLibrary.DataModuleMain in '..\..\lib\MyDelphiLibrary\source\MyLibrary.DataModuleMain.pas' {MyLibrary_DataModuleMain: TDataModule},
  MyLibrary.FormLogin in '..\..\lib\MyDelphiLibrary\source\FMX\FormLogin\MyLibrary.FormLogin.pas' {MyLibrary_FormLogin},
  uDmMain in '..\..\source\uDmMain.pas' {DmMain: TDataModule},
  MyLibrary.Core in '..\..\lib\MyDelphiLibrary\source\MyLibrary.Core.pas',
  MyLibrary.Session in '..\..\lib\MyDelphiLibrary\source\MyLibrary.Session.pas';

{$R *.res}

begin
  Application.Initialize;
  DmMain := TDmMain.Create(nil);
  try
    Application.CreateForm(TfmxMain, fmxMain);
  // Main form
  //Application.CreateForm(TfmxMain, fmxMain); // Main form

    Application.Run;

    //  Application.CreateForm(TFmxLogin, FmxLogin);

      //fmxMain.Show;
  finally
    DmMain.Free;
  end;
end.
