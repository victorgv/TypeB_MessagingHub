unit uDmMain;

interface

uses
  System.SysUtils, System.Classes, MyLibrary.DataModuleMain, FMX.Types;

type
  TDmMain = class(TMyLibrary_DataModuleMain)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmMain: TDmMain;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
