unit uFmxMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Menus,
  FMX.Controls.Presentation, FMX.MultiView, FMX.StdCtrls, FMX.TabControl,
  MyLibrary.FormUtil, FMX.Layouts, MyLibrary.Core;

type
  TfmxMain = class(TMyLibrary_MainFormBase_Tabbed)
    MainMenu1: TMainMenu;
    mi_setings: TMenuItem;
    mi_users: TMenuItem;
    mi_queries: TMenuItem;
    mi_exit: TMenuItem;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    mi_control_panel: TMenuItem;
    Layout1: TLayout;
    SpeedButton1: TSpeedButton;
    MultiView1: TMultiView;
    ti_login_control: TTimer;
    procedure mi_exitClick(Sender: TObject);
    procedure mi_usersClick(Sender: TObject);
    procedure TabItem2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure TabItem1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure FormPaint(Sender: TObject; Canvas: TCanvas; const ARect: TRectF);
    procedure ti_login_controlTimer(Sender: TObject);
  private
    { Private declarations }
    fLoginOpened: boolean;
  protected
    function getTabControl: TTabControl; override;
  public
    { Public declarations }
    constructor create(AOwner: TComponent); override;

  end;

var
  fmxMain: TfmxMain;

implementation

{$R *.fmx}

uses uFmxUsers, uFmxControlPanel, uFmxLogin;


{ TfmxMain }

constructor TfmxMain.create(AOwner: TComponent);
begin
  inherited;
end;

procedure TfmxMain.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);
begin
  if Key = vkHardwareBack then // Key =  vkEscape then //
    Key := 0;
end;

procedure TfmxMain.FormPaint(Sender: TObject; Canvas: TCanvas;
  const ARect: TRectF);
begin
  inherited;
  ti_login_control.Enabled := not fLoginOpened;
end;

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
  RunFormAsTab(TfmxUsers, false);
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

procedure TfmxMain.ti_login_controlTimer(Sender: TObject);
begin
  ti_login_control.Enabled := False;
  if not fLoginOpened then
  begin
    fLoginOpened := true;
    if NOT Assigned(MyLibrary_MASTER.Session) then   MyLibrary_MASTER.DoLogin(TFmxLogin);
  end;

end;

end.