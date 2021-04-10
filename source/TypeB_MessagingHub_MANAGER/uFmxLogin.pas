unit uFmxLogin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  MyLibrary.FormLogin, FMX.Objects, FMX.Controls.Presentation, FMX.Edit, FMX.Layouts,
  System.Hash;

type
  TFmxLogin = class(TMyLibrary_FormLogin)
    MailImage: TImage;
    LockImage: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure sb_doLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;



var
  FmxLogin: TFmxLogin;

implementation

{$R *.fmx}

procedure TFmxLogin.Button1Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFmxLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := TCloseAction.caFree;
end;

procedure TFmxLogin.sb_doLoginClick(Sender: TObject);
var
  Hash: THashSHA2;
begin
  inherited;

  Hash := THashSHA2.Create;
  Hash.Update('Hola * ç ó €');
  ShowMessage(Hash.HashAsString);



end;

end.
