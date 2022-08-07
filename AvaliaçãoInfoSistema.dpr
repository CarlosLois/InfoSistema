program AvaliaçãoInfoSistema;

uses
  Vcl.Forms,
  uCadastroCliente in 'uCadastroCliente.pas' {frmCadastroCliente},
  uAtivaComponente in 'uAtivaComponente.pas',
  uAnimate in 'uAnimate.pas',
  uValidaCampoObrigatorio in 'uValidaCampoObrigatorio.pas',
  uFiltrarRegistro in 'uFiltrarRegistro.pas',
  uCEP in 'uCEP.pas',
  uSomenteNumeros in 'uSomenteNumeros.pas',
  uEnderecoClass in 'uEnderecoClass.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCadastroCliente, frmCadastroCliente);
  Application.Run;
end.
