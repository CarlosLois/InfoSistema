unit uAtivaComponente;

interface

uses System.Classes, Winapi.Windows, Vcl.DBCtrls, Vcl.Graphics;

procedure SetCompActive(Sender : TComponent; bAtivar : Boolean);

implementation

procedure SetCompActive(Sender : TComponent; bAtivar : Boolean);
var
  ColorInactive : TColor;

  function IIF(Condicao : Boolean; ColorTrue, ColorFalse : TColor) : TColor;
  begin
    if Condicao then
      Result := ColorTrue
    else
      Result := ColorFalse;
  end;
begin
  ColorInactive := RGB(255, 250, 220);

  if Sender is TDBEdit then
  begin
    TDBEdit(Sender).ReadOnly := not bAtivar;
    TDBEdit(Sender).Color    := IIF (bAtivar, clWhite, ColorInactive);
    TDBEdit(Sender).TabStop  := bAtivar;
  end
  else if Sender is TDBComboBox then
  begin
    TDBComboBox(Sender).TabStop  := bAtivar;
    TDBComboBox(Sender).Enabled  := bAtivar;
  end

  else
    //;
end;

end.
