unit uTServiceRestServer;

interface

uses MyLibrary.WindowsServiceBASE, IdHTTPWebBrokerBridge, MyLibrary.DMVCF.WebModule, Web.WebReq;

Type
  TServiceRestServer = class(TMyLibrary_ServiceImplementationBASE)
    private
      fServer: TIdHTTPWebBrokerBridge;
      fWebModule: TMyLibrary_DMVCF_WebModule;
    protected
      procedure validateInstanceIsLive; Override;  // Check our Thread/Threads/Action/Actions, etc... are living
      function getServiceCode: String; Override;  // Unique code to indentify your service
    public
      procedure ServiceExecute; virtual;
      procedure ServiceStart; virtual;
      procedure ServiceStop; virtual;
      constructor create;
      destructor destroy;
  end;

implementation

{ TServiceRestServer }

constructor TServiceRestServer.create;
begin
  inherited create(nil);
  fServer := NIL;
  fWebModule := NIL;
end;

destructor TServiceRestServer.destroy;
begin
  fWebModule.Free;
  fServer.Free;
  inherited;
end;

function TServiceRestServer.getServiceCode: String;
begin
  result := 'TypeB_MessagingHub_REST_SERVER';
end;

procedure TServiceRestServer.ServiceExecute;
begin
  inherited;
end;

procedure TServiceRestServer.ServiceStart;
begin
  if WebRequestHandler <> nil then
      WebRequestHandler.WebModuleClass := WebModuleClass_MyLibrary_DMVCF_WebModule;
  if not Assigned(fServer) then
  begin
    fServer := TIdHTTPWebBrokerBridge.Create(nil);
    fServer.DefaultPort := 8080;
    fServer.Active := True;
  end;
  //
  inherited;
end;

procedure TServiceRestServer.ServiceStop;
begin
  inherited;
  fServer.Active := FALSE;
end;

procedure TServiceRestServer.validateInstanceIsLive;
begin
  inherited;

end;

end.
