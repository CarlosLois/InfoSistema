unit uAcesso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.pngimage, System.IniFiles;


type
  TfrmAcesso = class(TForm)
    Panel1: TPanel;
    btnAcesso: TSpeedButton;
    Panel2: TPanel;
    btnSair: TSpeedButton;
    imgLogo: TImage;
    lblSaudacao: TLabel;
    Label1: TLabel;
    Panel3: TPanel;
    btnConfigEmail: TSpeedButton;
    procedure btnAcessoClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnConfigEmailClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAcesso: TfrmAcesso;

const cFileNameConnection : String = 'ConfigConnection.ini';

function Execute : Boolean;

implementation

{$R *.dfm}

uses uConfigSMTP;

function Execute : Boolean;
begin
  frmAcesso := TfrmAcesso.Create(nil);
  try
    Result := frmAcesso.ShowModal = mrOk;
  finally
    FreeAndNil(frmAcesso);
  end;
end;

procedure TfrmAcesso.btnAcessoClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmAcesso.btnConfigEmailClick(Sender: TObject);
begin
  uConfigSMTP.Execute;
end;

procedure TfrmAcesso.btnSairClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
