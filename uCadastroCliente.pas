unit uCadastroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Data.DB, Datasnap.DBClient, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids;

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
    cdsClienteEND_COMPLEMETO: TStringField;
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
  private
    { Private declarations }
    stlFIELDFIND : TStringList;

    procedure SetButtonsManutencao(Ativar : Boolean = True);

  public
    { Public declarations }
  end;

var
  frmCadastroCliente: TfrmCadastroCliente;

implementation

uses uAcesso, uAtivaComponente, uMensagem, uValidaCampoObrigatorio, uFiltrarRegistro;

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

procedure TfrmCadastroCliente.DBGrid1DblClick(Sender: TObject);
begin
  tbsCadastro.TabVisible := True;
  tbsPesquisa.TabVisible := False;

  edtConeudoPesquisa.Text := '';
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
  if Sender <> btnGravar then
    if not uMensagem.Confirma('Deseja cancelar a manuten��o do registro atual?') then
      Exit;

  cdsCliente.Cancel;
  SetButtonsManutencao(False);
end;

procedure TfrmCadastroCliente.btnExluirClick(Sender: TObject);
begin
  if not uMensagem.Confirma('Confirma a excus�o do registro atual?') then
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
  btnGravar.Enabled           := Ativar;
  btnCancelar.Enabled         := Ativar;
end;

end.