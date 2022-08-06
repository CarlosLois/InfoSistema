unit uAnimate;

interface

uses Vcl.Controls, Winapi.Windows;

type
  TSentidoAnimate = (saLeftToRight, saRightToLeft, saUpToDown, saDownToUp, saCenter, saUnknown);

procedure AnimateForm(Sender   : TWinControl;
                      aSENTIDO : TSentidoAnimate;
                      bHIDE    : Boolean = False;
                      nSPEED   : Integer = 250);

implementation

procedure AnimateForm(Sender   : TWinControl;
                      aSENTIDO : TSentidoAnimate;
                      bHIDE    : Boolean = False;
                      nSPEED   : Integer = 250);
var
  dwFlags: DWORD;
begin
  dwFlags := AW_SLIDE;

  //SE FOR ESCONDER
  if bHIDE then
  begin
    dwFlags := dwFlags + AW_HIDE;

    case aSENTIDO of
      saLeftToRight : dwFlags := dwFlags + AW_HOR_NEGATIVE;
      saRightToLeft : dwFlags := dwFlags + AW_HOR_POSITIVE;
      saUpToDown    : dwFlags := dwFlags + AW_VER_NEGATIVE;
      saDownToUp    : dwFlags := dwFlags + AW_VER_POSITIVE;
      saCenter      : dwFlags := dwFlags + AW_CENTER;
    end;
  end
  else
  begin
    dwFlags := dwFlags + AW_ACTIVATE;

    case aSENTIDO of
      saLeftToRight : dwFlags := dwFlags + AW_HOR_POSITIVE;
      saRightToLeft : dwFlags := dwFlags + AW_HOR_NEGATIVE;
      saUpToDown    : dwFlags := dwFlags + AW_VER_POSITIVE;
      saDownToUp    : dwFlags := dwFlags + AW_VER_NEGATIVE;
      saCenter      : dwFlags := dwFlags + AW_CENTER;
    end;
  end;

  AnimateWindow(Sender.Handle, nSPEED, dwFlags);

  if bHIDE then
    Sender.Tag := Sender.Tag + 999
  else
    Sender.Tag := Sender.Tag - 999
end;


end.
