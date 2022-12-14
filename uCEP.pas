unit uCEP;

interface

uses REST.Json.Types, IdHTTP, IdSSLOpenSSL, System.Classes, REST.Json, System.SysUtils, System.JSON;

type
  TCEP = class
  private

    FIdHTTP                     : TIdHTTP;
    FIdSSLIOHandlerSocketOpenSSL: TIdSSLIOHandlerSocketOpenSSL;

    FCEP        : string;
    FLogradouro : string;
    FBairro     : string;
    FCidade     : string;
    FComplemento: string;
    FEstado     : string;


    FMensagem   : String;

    FJSonRetorno: TJSonValue;

    procedure SetCEP(const Value: string);
  public
    property CEP        : string read FCEP         write SetCEP;
    property Logradouro : string read FLogradouro;
    property Complemento: string read FComplemento;
    property Bairro     : string read FBairro;
    property Cidade     : string read FCidade;
    property Estado     : string read FEstado;

    property Mensagem   : string read FMensagem;

    function ConsultaCep : Boolean;

    constructor Create(const ACep : String);
    destructor Destroy; override;

  end;

implementation

uses uSomenteNumeros;

{ TCEP }

function TCEP.ConsultaCep: Boolean;
const
  URL         = 'https://viacep.com.br/ws/%s/json';
  INVALID_CEP = '{'#$A'  "erro": "true"'#$A'}';
var
  LResponse: TStringStream;
begin
  Result    := False;

  if Length(SomenteNumeros(FCEP)) <> 8 then
  begin
    FMensagem := 'O CEP informado n?o possui um formato v?lido!';
    Exit;
  end;
  LResponse := TStringStream.Create('', TEncoding.UTF8);
  try
    FIdHTTP.Get(Format(URL, [FCEP]), LResponse);

    if (FIdHTTP.ResponseCode = 200) and (not (LResponse.DataString.Equals(INVALID_CEP))) then
    begin
      FJSonRetorno := TJSonObject.ParseJSONValue(LResponse.DataString);
      try
        FLogradouro   := FJSonRetorno.GetValue<string>('logradouro');
        FComplemento  := FJSonRetorno.GetValue<string>('complemento');
        FBairro       := FJSonRetorno.GetValue<string>('bairro');
        FCidade       := FJSonRetorno.GetValue<string>('localidade');
        FEstado       := FJSonRetorno.GetValue<string>('uf');
      finally
        FreeAndnil(FJSonRetorno);
      end;
      Result := True;
    end;
  finally
    LResponse.Free;
  end;
end;

constructor TCEP.Create(const ACep : String);
begin
  FCEP      := ACep;
  FMensagem := '';

  FIdHTTP                                             := TIdHTTP.Create;
  FIdSSLIOHandlerSocketOpenSSL                        := TIdSSLIOHandlerSocketOpenSSL.Create;
  FIdHTTP.IOHandler                                   := FIdSSLIOHandlerSocketOpenSSL;
  FIdSSLIOHandlerSocketOpenSSL.SSLOptions.SSLVersions := [sslvTLSv1, sslvTLSv1_1, sslvTLSv1_2];
end;

destructor TCEP.Destroy;
begin
  FreeAndNil(FIdHTTP);
  FreeAndNil(FIdSSLIOHandlerSocketOpenSSL);

  inherited;
end;

procedure TCEP.SetCEP(const Value: string);
begin
  FCEP := Value;
end;

end.
