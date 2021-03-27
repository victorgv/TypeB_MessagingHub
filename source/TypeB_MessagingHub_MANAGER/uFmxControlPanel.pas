unit uFmxControlPanel;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls,  MyLibrary.FormUtil;

type
  TfmxControlPanel = class(TMyLibrary_FormBase)
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmxControlPanel: TfmxControlPanel;

implementation

{$R *.fmx}

end.
