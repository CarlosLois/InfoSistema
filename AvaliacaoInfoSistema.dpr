program AvaliacaoInfoSistema;

uses
  Vcl.Forms,
  uCadastroCliente in 'uCadastroCliente.pas' {frmCadastroCliente},
  uAtivaComponente in 'uAtivaComponente.pas',
  uAnimate in 'uAnimate.pas',
  uValidaCampoObrigatorio in 'uValidaCampoObrigatorio.pas',
  uFiltrarRegistro in 'uFiltrarRegistro.pas',
  uCEP in 'uCEP.pas',
  uSomenteNumeros in 'uSomenteNumeros.pas',
  uEnderecoClass in 'uEnderecoClass.pas',
  uParametros in 'uParametros.pas',
  uEmail in 'uEmail.pas',
  uConfigSMTP in 'uConfigSMTP.pas' {frmConfigSMTP};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCadastroCliente, frmCadastroCliente);
  Application.CreateForm(TfrmConfigSMTP, frmConfigSMTP);
  Application.Run;
end.

