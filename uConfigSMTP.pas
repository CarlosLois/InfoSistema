unit uConfigSMTP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Buttons, Vcl.Samples.Spin;

type
  TfrmConfigSMTP = class(TForm)
    lblEmail: TLabel;
    edtEmail: TEdit;
    lblSMTP: TLabel;
    edtSMTP: TEdit;
    lblSenha: TLabel;
    edtSenha: TEdit;
    lblPorta: TLabel;
    edtPorta: TSpinEdit;
    Panel7: TPanel;
    btnGravar: TSpeedButton;
    Panel8: TPanel;
    btnCancelar: TSpeedButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    pnlTop: TPanel;
    lblNomeForm: TLabel;
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfigSMTP: TfrmConfigSMTP;

function Execute : Boolean;

implementation

{$R *.dfm}

uses uParametros, uMensagem;

function Execute : Boolean;
begin
  frmConfigSMTP := TfrmConfigSMTP.Create(Application);
  try
    Result := frmConfigSMTP.ShowModal = mrOk;
  finally
    FreeAndNil(frmConfigSMTP);
  end;
end;

procedure TfrmConfigSMTP.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmConfigSMTP.btnGravarClick(Sender: TObject);
const
  Msg = 'O campo #1 é de preenhimento obrigatório!';
begin
  if Trim(edtEmail.Text) = '' then
  begin
    uMensagem.Informa(StringReplace(Msg, '#1', lblEmail.Caption, []));
    Exit;
  end;

  if Trim(edtSMTP.Text) = '' then
  begin
    uMensagem.Informa(StringReplace(Msg, '#1', lblSMTP.Caption, []));
    Exit;
  end;

  if Trim(edtSenha.Text) = '' then
  begin
    uMensagem.Informa(StringReplace(Msg, '#1', lblSenha.Caption, []));
    Exit;
  end;

  pubConfigEmailSMTP.WriteString('SMTP_EMAIL', 'CONTA', edtEmail.Text);
  pubConfigEmailSMTP.WriteString('SMTP_EMAIL', 'SMTP' , edtSMTP.Text);
  pubConfigEmailSMTP.WriteString('SMTP_EMAIL', 'SENHA', edtSenha.Text);
  pubConfigEmailSMTP.WriteString('SMTP_EMAIL', 'PORTA', edtPorta.Text);

  ModalResult := mrOk;
end;

procedure TfrmConfigSMTP.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    if btnGravar.Enabled then
      btnGravarClick(btnGravar);
  end
  else if (Key = VK_ESCAPE) then
  begin
    if btnCancelar.Enabled then
      btnCancelarClick(btnCancelar);
  end
end;

procedure TfrmConfigSMTP.FormShow(Sender: TObject);
begin
  edtEmail.Text := pubConfigEmailSMTP.ReadString('SMTP_EMAIL', 'CONTA', '');
  edtSMTP.Text  := pubConfigEmailSMTP.ReadString('SMTP_EMAIL', 'SMTP' , '');
  edtSenha.Text := pubConfigEmailSMTP.ReadString('SMTP_EMAIL', 'SENHA', '');
  edtPorta.Text := pubConfigEmailSMTP.ReadString('SMTP_EMAIL', 'PORTA', '');
end;

end.
