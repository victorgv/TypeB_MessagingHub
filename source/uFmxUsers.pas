unit uFmxUsers;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation,  MyLibrary.FormUtil, System.Math.Vectors,
  FMX.Controls3D, FMX.Layers3D, FMX.Layouts;

type
  TfmxUsers = class(TMyLibraryFormBase)
    Layout1: TLayout;
    Layout3D1: TLayout3D;
    Label1: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;



implementation

{$R *.fmx}

procedure TfmxUsers.Button1Click(Sender: TObject);
begin
  ShowMessage('hola');
end;

end.
