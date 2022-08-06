unit uValidaCampoObrigatorio;

interface

uses Data.DB, System.Variants, System.SysUtils;

function VerificaCampoObrigatorio(DataSet : TDataSet) : Boolean;

implementation

uses uMensagem;

function VerificaCampoObrigatorio(DataSet : TDataSet) : Boolean;
var
  I : Integer;
begin
  DataSet.UpdateRecord;

  Result := True;
  for I := 0 to Pred(DataSet.FieldCount) do
  begin
    if not DataSet.Fields[I].Required then
      Continue;

    if Trim(VarToStrDef(DataSet.Fields[I].Value, '')) = '' then
    begin
      uMensagem.Informa('O campo '+DataSet.Fields[I].DisplayLabel+' é de preenchimento obrigatório!');
      Result := False;
      Break
    end;
  end;
end;

end.
