unit uFmxMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Menus,
  FMX.Controls.Presentation, FMX.MultiView, FMX.StdCtrls, FMX.TabControl,
  MyLibrary.FormUtil, FMX.Layouts;

type
  TfmxMain = class(TMyLibraryFormBase_MDI_Tabbed)
    MainMenu1: TMainMenu;
    mi_setings: TMenuItem;
    mi_users: TMenuItem;
    mi_queries: TMenuItem;
    mi_exit: TMenuItem;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    mi_control_panel: TMenuItem;
    Panel1: TPanel;
    MultiView1: TMultiView;
    Layout1: TLayout;
    procedure mi_exitClick(Sender: TObject);
    procedure mi_usersClick(Sender: TObject);
    procedure TabItem2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure TabItem1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
  private
    { Private declarations }
  protected
    function getTabControl: TTabControl; override;
  public
    { Public declarations }

  end;

var
  fmxMain: TfmxMain;

implementation

{$R *.fmx}

uses uFmxUsers, uFmxControlPanel;


{ TfmxMain }

function TfmxMain.getTabControl: TTabControl;
begin
  result := TabControl1;
end;

procedure TfmxMain.mi_exitClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfmxMain.mi_usersClick(Sender: TObject);
begin
  CallForm(TfmxUsers, false);
end;



procedure TfmxMain.TabItem1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  if Button = TMouseButton.mbRight then
    showmessage('soy el 1 x='+x.ToString+' y='+y.ToString);
end;

procedure TfmxMain.TabItem2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  if Button = TMouseButton.mbRight then
    showmessage('soy el 2 x='+x.ToString+' y='+y.ToString);

end;

end.
