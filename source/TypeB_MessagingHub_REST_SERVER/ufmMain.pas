unit ufmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uTServiceRestServer;

type
  TfmMain = class(TForm)
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }

    fServiceRestServer: TServiceRestServer;

  public
    { Public declarations }
  end;

var
  fmMain: TfmMain;

implementation

{$R *.dfm}



procedure TfmMain.Button1Click(Sender: TObject);
begin
  if not Assigned(fServiceRestServer) then
    fServiceRestServer := TServiceRestServer.create;
  fServiceRestServer.ServiceStart;
end;

procedure TfmMain.FormCreate(Sender: TObject);
begin
  fServiceRestServer := NIL;
end;

procedure TfmMain.FormDestroy(Sender: TObject);
begin
  fServiceRestServer.Free;
end;

end.
