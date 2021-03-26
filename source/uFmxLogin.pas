unit uFmxLogin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  uFmxBaseLogin, FMX.Objects, FMX.Controls.Presentation, FMX.Edit, FMX.Layouts;

type
  TFmxLogin = class(TFmxBaseLogin)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmxLogin: TFmxLogin;

implementation

{$R *.fmx}

end.
