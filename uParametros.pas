unit uParametros;

interface

uses System.SysUtils, Vcl.Forms, IniFiles;

var
  pubPathAplicacao    : string;
  pubConfigEmailSMTP  : TIniFile;

procedure SetPathAplicacao;
procedure SetConfigEmailSMTP;

implementation

procedure SetPathAplicacao;
begin
  pubPathAplicacao :=  ExtractFilePath(Application.ExeName);
end;

procedure SetConfigEmailSMTP;
begin
  pubConfigEmailSMTP := TIniFile.Create(pubPathAplicacao+'ConfigSMTP.ini');
end;



end.
