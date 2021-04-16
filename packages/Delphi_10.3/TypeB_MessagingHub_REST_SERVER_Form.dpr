program TypeB_MessagingHub_REST_SERVER_Form;

uses
  Vcl.Forms,
  ufmMain in '..\..\source\TypeB_MessagingHub_REST_SERVER\ufmMain.pas' {fmMain},
  MyLibrary.DMVCF.WebModule in '..\..\lib\MyDelphiLibrary\source\DMVCFramework\MyLibrary.DMVCF.WebModule.pas' {MyLibrary_DMVCF_WebModule: TWebModule},
  MyLibrary.DMVCF.Controller.Public_V01 in '..\..\lib\MyDelphiLibrary\source\DMVCFramework\MyLibrary.DMVCF.Controller.Public_V01.pas',
  MyLibrary.WindowsServiceBASE in '..\..\lib\MyDelphiLibrary\source\WindowsService\MyLibrary.WindowsServiceBASE.pas',
  uTServiceRestServer in '..\..\source\TypeB_MessagingHub_REST_SERVER\uTServiceRestServer.pas',
  MyLibrary.FireDAC_PooledConnection in '..\..\lib\MyDelphiLibrary\source\FireDAC\MyLibrary.FireDAC_PooledConnection.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmMain, fmMain);
  Application.Run;
end.
