unit HisService_YB_Impl;

{----------------------------------------------------------------------------}
{ This unit was automatically generated by the RemObjects SDK after reading  }
{ the RODL file associated with this project .                               }
{                                                                            }
{ This is where you are supposed to code the implementation of your objects. }
{----------------------------------------------------------------------------}

{$I RemObjects.inc}

interface

uses
  {vcl:} Classes, SysUtils,  App_DAServer, HisService_YB_Backend,
  {RemObjects:} uROXMLIntf, uROClientIntf, uROTypes, uROServer, uROServerIntf, uROSessions,
  {Required:} uRORemoteDataModule,
  {Ancestor Implementation:} DataAbstractService_Impl,
  {Used RODLs:} DataAbstract4_Intf,
  {Generated:} HisLibrary_Intf, uROClient, uDADataStreamer,
  uDABin2DataStreamer, uDAScriptingProvider, uDABusinessProcessor, uDAInterfaces,
  uDAFields, uDADelta, uROComponent;

type
  { THisService_YB }
  THisService_YB = class(TDataAbstractService, IHisService_YB)
    procedure DataAbstractServiceActivate(const aClientID: TGUID;
      aSession: TROSession; const aMessage: IROMessage);
    procedure DataAbstractServiceDeactivate(const aClientID: TGUID;
      aSession: TROSession);
    procedure DataAbstractServiceCreate(Sender: TObject);
    procedure DataAbstractServiceUpdateDataBeginTransaction(
      Sender: TObject; var aUseDefaultTransactionLogic: Boolean);
  private
  protected
    { IHisService_YB methods }
  end;

implementation

{$IFDEF DELPHIXE2UP}
{%CLASSGROUP 'System.Classes.TPersistent'}
{$ENDIF}

{$IFNDEF FPC}
  {$R *.dfm}
{$ELSE}
  {$R *.lfm}
{$ENDIF}
uses
  {Generated:} HisLibrary_Invk, uROClassFactories;

procedure Create_HisService_YB(out anInstance : IUnknown);
begin
  anInstance := THisService_YB.Create(nil);
end;
  
var
  fClassFactory: IROClassFactory;

{ HisService_YB }
procedure THisService_YB.DataAbstractServiceActivate(
  const aClientID: TGUID; aSession: TROSession;
  const aMessage: IROMessage);
begin
  ServiceDataStreamer := YBBackend.GetDAStreamer;
  ServiceSchema := YBBackend.GetSchema;
end;

procedure THisService_YB.DataAbstractServiceDeactivate(
  const aClientID: TGUID; aSession: TROSession);
begin
  ServiceSchema := nil;
end;

procedure THisService_YB.DataAbstractServiceCreate(Sender: TObject);
begin
  AllowWhereSql := True;
end;

procedure THisService_YB.DataAbstractServiceUpdateDataBeginTransaction(
  Sender: TObject; var aUseDefaultTransactionLogic: Boolean);
begin
  aUseDefaultTransactionLogic := False;
end;

initialization
  fClassFactory := TROPooledClassFactory.Create('HisService_YB',
    {$IFDEF FPC}@{$ENDIF}Create_HisService_YB, THisService_YB_Invoker, 10);
  // RegisterForZeroConf(fClassFactory,'_HisService_YB_rosdk._tcp.');

finalization
  UnRegisterClassFactory(fClassFactory);
  fClassFactory := nil;

end.
