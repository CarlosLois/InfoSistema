unit uCadastroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Data.DB, Datasnap.DBClient, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient,
  IdSMTPBase, IdSMTP;

type
  TfrmCadastroCliente = class(TForm)
    pnlTop: TPanel;
    imgFechar: TImage;
    pgcCadastroCliente: TPageControl;
    tbsCadastro: TTabSheet;
    tbsPesquisa: TTabSheet;
    pnlCadastro: TPanel;
    edtNome: TDBEdit;
    edtRG: TDBEdit;
    edtCPF: TDBEdit;
    edtTelefone: TDBEdit;
    edtEmail: TDBEdit;
    lblNomeForm: TLabel;
    dsCliente: TDataSource;
    cdsCliente: TClientDataSet;
    cdsClienteNOME: TStringField;
    cdsClienteRG: TStringField;
    cdsClienteCPF: TStringField;
    cdsClienteTELEFONE: TStringField;
    cdsClienteEMAIL: TStringField;
    lblCliente: TLabel;
    lblRG: TLabel;
    lblCPF: TLabel;
    lblTelefone: TLabel;
    lblEmail: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtCEP: TDBEdit;
    edtLogradouro: TDBEdit;
    edtNumero: TDBEdit;
    edtComplemento: TDBEdit;
    edtBairro: TDBEdit;
    lblCEP: TLabel;
    lblLogradouro: TLabel;
    lblNumero: TLabel;
    lblComlemento: TLabel;
    lblBairro: TLabel;
    edtCidade: TDBEdit;
    lblCidade: TLabel;
    lblEstado: TLabel;
    edtPais: TDBEdit;
    lblPais: TLabel;
    cdsClienteEND_CEP: TStringField;
    cdsClienteEND_LOGRADOURO: TStringField;
    cdsClienteEND_NUMERO: TStringField;
    cdsClienteEND_COMPLEMENTO: TStringField;
    cdsClienteEND_BAIRRO: TStringField;
    cdsClienteEND_CIDADE: TStringField;
    cdsClienteEND_ESTADO: TStringField;
    cdsClienteEND_PAIS: TStringField;
    cboEstado: TDBComboBox;
    Panel4: TPanel;
    btnNovo: TSpeedButton;
    Panel5: TPanel;
    btnAlterar: TSpeedButton;
    Panel6: TPanel;
    btnExluir: TSpeedButton;
    Panel7: TPanel;
    btnGravar: TSpeedButton;
    Panel8: TPanel;
    btnCancelar: TSpeedButton;
    DBNavigator1: TDBNavigator;
    Panel9: TPanel;
    cboPesquisarpor: TComboBox;
    edtConeudoPesquisa: TEdit;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    Label4: TLabel;
    Panel10: TPanel;
    btnPesquisar: TSpeedButton;
    Panel11: TPanel;
    btnEmail: TSpeedButton;
    IdSMTP1: TIdSMTP;
    procedure imgFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtConeudoPesquisaChange(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtCEPExit(Sender: TObject);
    procedure btnEmailClick(Sender: TObject);
  private
    { Private declarations }
    stlFIELDFIND : TStringList;

    procedure SetButtonsManutencao(Ativar : Boolean = True);
    procedure ConsultaCep;

  public
    { Public declarations }
  end;

var
  frmCadastroCliente: TfrmCadastroCliente;

implementation

uses uAcesso, uAtivaComponente, uMensagem, uValidaCampoObrigatorio, uFiltrarRegistro, uCEP, uCadastroClienteClass, uEnderecoClass, uConfigSMTP, uEmail, uParametros;

{$R *.dfm}

procedure TfrmCadastroCliente.btnNovoClick(Sender: TObject);
begin
  cdsCliente.Append;
  SetButtonsManutencao;
  edtNome.SetFocus;
end;

procedure TfrmCadastroCliente.btnPesquisarClick(Sender: TObject);
begin
  tbsCadastro.TabVisible := False;
  tbsPesquisa.TabVisible := True;
end;

procedure TfrmCadastroCliente.ConsultaCep;
var
  CEP : TCEP;
begin
  if not (cdsCliente.State in [dsInsert, dsEdit]) then
    Exit;

  CEP := TCEP.Create(edtCEP.Text);
  try
    if (not CEP.ConsultaCep) and (CEP.Mensagem <> '') then
    begin
      Informa(CEP.Mensagem);
      Exit;
    end;

    if (Trim(edtLogradouro.Text) <> '') and (edtLogradouro.Text <> CEP.Logradouro) then
      if not Confirma('Deseja substituir o endereço conforme o CEP informado?') then
        Exit;

    cdsClienteEND_LOGRADOURO.AsString  := CEP.Logradouro;
    cdsClienteEND_COMPLEMENTO.AsString := CEP.Complemento;
    cdsClienteEND_BAIRRO.AsString      := CEP.Bairro;
    cdsClienteEND_CIDADE.AsString      := CEP.Cidade;
    cdsClienteEND_ESTADO.AsString      := CEP.Estado;

    if (CEP.Estado <> 'EX') and (CEP.Estado <> '') then
      cdsClienteEND_PAIS.AsString := 'Brasil';

  finally
    FreeAndNil(CEP);
  end;
end;

procedure TfrmCadastroCliente.DBGrid1DblClick(Sender: TObject);
begin
  tbsCadastro.TabVisible := True;
  tbsPesquisa.TabVisible := False;

  edtConeudoPesquisa.Text := '';
end;

procedure TfrmCadastroCliente.edtCEPExit(Sender: TObject);
begin
  ConsultaCep;
end;

procedure TfrmCadastroCliente.edtConeudoPesquisaChange(Sender: TObject);
begin
  FiltrarRegistro(cdsCliente, stlFIELDFIND.Strings[cboPesquisarpor.ItemIndex], edtConeudoPesquisa.Text);
end;

procedure TfrmCadastroCliente.btnAlterarClick(Sender: TObject);
begin
  cdsCliente.Edit;
  SetButtonsManutencao;
  edtNome.SetFocus;
end;

procedure TfrmCadastroCliente.btnCancelarClick(Sender: TObject);
begin
  if not uMensagem.Confirma('Deseja cancelar a manutenção do registro atual?') then
    Exit;

  cdsCliente.Cancel;
  SetButtonsManutencao(False);
end;

procedure TfrmCadastroCliente.btnEmailClick(Sender: TObject);
var
  CadastroCliente : TCadastroCliente;
  Endereco        : TEndereco;
  Email           : TEmail;
begin
  CadastroCliente := TCadastroCliente.Create;
  Endereco        := TEndereco.Create;
  Email           := TEmail.Create;
  try
    Endereco.Assign(cdsClienteEND_CEP.AsString        ,
                    cdsClienteEND_LOGRADOURO.AsString ,
                    cdsClienteEND_NUMERO.AsString     ,
                    cdsClienteEND_COMPLEMENTO.AsString,
                    cdsClienteEND_BAIRRO.AsString     ,
                    cdsClienteEND_CIDADE.AsString     ,
                    cdsClienteEND_ESTADO.AsString     ,
                    cdsClienteEND_PAIS.AsString       );

    CadastroCliente.Assign(cdsClienteNOME.AsString    ,
                           cdsClienteRG.AsString      ,
                           cdsClienteCPF.AsString     ,
                           cdsClienteTELEFONE.AsString,
                           cdsClienteEMAIL.AsString   ,
                           Endereco                   );


    CadastroCliente.SaveToXml(pubPathAplicacao+'Cadastro.xml');

    Email.Assign(cdsClienteEMAIL.AsString,
                 'Cadastro Realizado InfoSistemas',
                 'Olá '+cdsClienteNOME.AsString+'!'#13 +
                 'Segue anexo dados cadastrais em nossa plataforma.'#13 +
                 'Atenciosamente!',
                 pubPathAplicacao+'Cadastro.xml');

    if not Email.Enviar then
    begin
      if uMensagem.Confirma('E-mail não enviado! Deseja revisar as configurações de conta?') then
        uConfigSMTP.Execute;
    end
    else
      uMensagem.Informa('E-mail enviado com sucesso!');

  finally
    FreeAndNil(CadastroCliente);
  end;
end;

procedure TfrmCadastroCliente.btnExluirClick(Sender: TObject);
begin
  if not uMensagem.Confirma('Confirma a excusão do registro atual?') then
    Exit;

  cdsCliente.Delete;
  SetButtonsManutencao;
end;

procedure TfrmCadastroCliente.btnGravarClick(Sender: TObject);
begin
  if not uMensagem.Confirma('Deseja gravar o registro atual?') then
    Exit;

  if not VerificaCampoObrigatorio(cdsCliente) then
    Exit;

  cdsCliente.Post;
  SetButtonsManutencao(False);
end;

procedure TfrmCadastroCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Assigned(stlFIELDFIND) then
    FreeAndNil(stlFIELDFIND);
end;

procedure TfrmCadastroCliente.FormCreate(Sender: TObject);
var
  I : Integer;
begin
  stlFIELDFIND := TStringList.Create;
  cboPesquisarpor.Clear;

  for I := 0 to Pred(cdsCliente.FieldCount) do
  begin
    cboPesquisarpor.Items.Add(cdsCliente.Fields[I].DisplayLabel);
    stlFIELDFIND.Add(cdsCliente.Fields[I].FieldName);
  end;

  if cboPesquisarpor.Items.Count > 0 then
    cboPesquisarpor.ItemIndex := 0;

  tbsPesquisa.TabVisible := False;
end;

procedure TfrmCadastroCliente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if pgcCadastroCliente.ActivePage = tbsCadastro then
  begin
    if (Key = VK_F2) then
    begin
      if btnNovo.Enabled then
        btnNovoClick(btnNovo);
    end
    else if (Key = VK_F3) then
    begin
      if btnAlterar.Enabled then
        btnAlterarClick(btnAlterar);
    end
    else if (Key = VK_F4) then
    begin
      if btnExluir.Enabled then
        btnExluirClick(btnExluir);
    end
    else if (Key = VK_F8) then
    begin
      if btnPesquisar.Enabled then
        btnPesquisarClick(btnPesquisar);
    end
    else if (Key = VK_F9) then
    begin
      if btnEmail.Enabled then
        btnEmailClick(btnEmail);
    end
    else if (Key = VK_RETURN) then
    begin
      if btnGravar.Enabled then
        btnGravarClick(btnGravar);
    end
    else if (Key = VK_ESCAPE) then
    begin
      if btnCancelar.Enabled then
        btnCancelarClick(btnCancelar);
    end
  end
  else
  begin
    if (Key = VK_RETURN) then
      DBGrid1DblClick(DBGrid1);
  end;
end;

procedure TfrmCadastroCliente.FormShow(Sender: TObject);
begin
  if not uAcesso.Execute then
    Close;

  if not cdsCliente.Active then
    cdsCliente.CreateDataSet;
  cdsCliente.EmptyDataSet;


  SetButtonsManutencao(False);
end;

procedure TfrmCadastroCliente.imgFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastroCliente.SetButtonsManutencao(Ativar: Boolean);
begin
  SetCompActive(edtNome       , Ativar);
  SetCompActive(edtRG         , Ativar);
  SetCompActive(edtCPF        , Ativar);
  SetCompActive(edtTelefone   , Ativar);
  SetCompActive(edtEmail      , Ativar);
  SetCompActive(edtCEP        , Ativar);
  SetCompActive(edtLogradouro , Ativar);
  SetCompActive(edtNumero     , Ativar);
  SetCompActive(edtComplemento, Ativar);
  SetCompActive(edtBairro     , Ativar);
  SetCompActive(edtCidade     , Ativar);
  SetCompActive(cboEstado     , Ativar);
  SetCompActive(edtPais       , Ativar);

  btnNovo.Enabled             := not Ativar;
  btnAlterar.Enabled          := (not Ativar) and (not cdsCliente.IsEmpty);
  btnExluir.Enabled           := btnAlterar.Enabled;
  btnPesquisar.Enabled        := not Ativar;
  btnEmail.Enabled            := btnAlterar.Enabled;

  btnGravar.Enabled           := Ativar;
  btnCancelar.Enabled         := Ativar;
end;

initialization
begin
  SetPathAplicacao;
  SetConfigEmailSMTP;
end;

end.
