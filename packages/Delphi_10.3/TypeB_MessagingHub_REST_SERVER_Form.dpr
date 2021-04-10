program TypeB_MessagingHub_REST_SERVER_Form;

uses
  Vcl.Forms,
  ufmMain in '..\..\source\TypeB_MessagingHub_REST_SERVER\ufmMain.pas' {fmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmMain, fmMain);
  Application.Run;
end.
