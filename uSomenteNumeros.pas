unit uSomenteNumeros;

interface

function SomenteNumeros(const S: string): string;

implementation


function SomenteNumeros(const S: string): string;
var
  vText : PChar;
begin
  vText := PChar(S);
  Result := '';

  while (vText^ <> #0) do
  begin
    if vText^ in ['0'..'9'] then
      Result := Result + vText^;

    Inc(vText);
  end;
end;

end.
