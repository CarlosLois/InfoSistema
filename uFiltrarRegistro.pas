unit uFiltrarRegistro;

interface

uses Data.DB, System.SysUtils;

procedure FiltrarRegistro(DataSet : TDataSet; const FieldBusca : String; const ValorBusca : String);

implementation

procedure FiltrarRegistro(DataSet : TDataSet; const FieldBusca : String; const ValorBusca : String);
begin
  DataSet.DisableControls;
  try
    DataSet.Filtered := False;

    if Trim(ValorBusca) = '' then
      Exit;

    DataSet.Filter   := FieldBusca+' LIKE '+QuotedStr('%'+ValorBusca+'%');
    DataSet.Filtered := True;
  finally
    DataSet.EnableControls;
  end;
end;

end.
