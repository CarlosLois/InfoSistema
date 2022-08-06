unit uMensagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmMensagem = class(TForm)
    pnlOk: TPanel;
    btnSim: TSpeedButton;
    pnlNo: TPanel;
    btnNao: TSpeedButton;
    lblMensagem: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    procedure btnSimClick(Sender: TObject);
    procedure btnNaoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMensagem: TfrmMensagem;

function Confirma(const Mensagem : string) : Boolean;
procedure Informa(const Mensagem : string);


implementation

{$R *.dfm}

uses uAnimate;

function MensagemClass(const Mensagem : string;
                       MsgDlgType     : TMsgDlgType) : Boolean;
begin
  frmMensagem := TfrmMensagem.Create(nil);
  try
    with frmMensagem do
    begin
      if MsgDlgType = mtInformation then
      begin
        pnlOk.Visible  := False;
        btnNao.Caption := 'Ok';
      end;

      lblMensagem.Caption := Mensagem;

      Result := frmMensagem.ShowModal = mrOk;
    end;
  finally
    FreeAndNil(frmMensagem);
  end;
end;

function Confirma(const Mensagem : string) : Boolean;
begin
  Result := MensagemClass(Mensagem, mtConfirmation);
end;

procedure Informa(const Mensagem : string);
begin
  MensagemClass(Mensagem, mtInformation);
end;

procedure TfrmMensagem.btnNaoClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmMensagem.btnSimClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmMensagem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  AnimateForm(Self, saCenter, True);
end;

procedure TfrmMensagem.FormShow(Sender: TObject);
begin
  AnimateForm(Self, saCenter);
end;

end.
