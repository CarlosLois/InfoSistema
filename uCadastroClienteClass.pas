unit uCadastroClienteClass;

interface

uses Xml.XMLDoc, uEnderecoClass;

type
  TCadastroCliente = class
  private
    FNome      : String;
    FRG        : String;
    FCPF       : String;
    FTelefone  : String;
    FEmail     : String;
    FEndereco  : TEndereco;

    function GetCPF     : String;
    function GetEmail   : String;
    function GetEndereco: TEndereco;
    function GetNome    : String;
    function GetRG      : String;
    function GetTelefone: String;

    procedure SetCPF(const Value: String);
    procedure SetEmail(const Value: String);
    procedure SetEndereco(const Value: TEndereco);
    procedure SetNome(const Value: String);
    procedure SetRG(const Value: String);
    procedure SetTelefone(const Value: String);
  public
    constructor Create;
    Destructor Destroy;


    property Nome     : String read GetNome     write SetNome;
    property RG       : String read GetRG       write SetRG;
    property CPF      : String read GetCPF      write SetCPF;
    property Telefone : String read GetTelefone write SetTelefone;
    property Email    : String read GetEmail    write SetEmail;

    property Endereco : TEndereco read GetEndereco write SetEndereco;

    function SaveToXml(const Path : String): Boolean;
  end;

implementation

{ TCadastroCliente }

constructor TCadastroCliente.Create;
begin
  FEndereco  := TEndereco.Create;
end;

destructor TCadastroCliente.Destroy;
begin
  FEndereco.Free;
end;

function TCadastroCliente.GetCPF: String;
begin
  Result := FCPF;
end;

function TCadastroCliente.GetEmail: String;
begin
  Result := FEmail;
end;

function TCadastroCliente.GetEndereco: TEndereco;
begin
  Result := FEndereco;
end;

function TCadastroCliente.GetNome: String;
begin
  Result := FNome;
end;

function TCadastroCliente.GetRG: String;
begin
  Result := FRG;
end;

function TCadastroCliente.GetTelefone: String;
begin
  Result := FTelefone;
end;

function TCadastroCliente.SaveToXml(const Path: String): Boolean;
var
  XMLDocument : TXMLDocument;
begin
  XMLDocument := TXMLDocument.Create(nil);
  try
    XMLDocument.Active := True;
    XMLDocument.AddChild('Nome').NodeValue     := '';
    XMLDocument.AddChild('Rg').NodeValue       := '';
    XMLDocument.AddChild('Cpf').NodeValue      := '';
    XMLDocument.AddChild('Telefone').NodeValue := '';
    XMLDocument.AddChild('Email').NodeValue    := '';

    XMLDocument.DocumentElement.AddChild('Endereco');
    XMLDocument.DocumentElement.ChildNodes['Endereco'].AddChild('Cep').NodeValue         := '';
    XMLDocument.DocumentElement.ChildNodes['Endereco'].AddChild('Logradouro').NodeValue  := '';
    XMLDocument.DocumentElement.ChildNodes['Endereco'].AddChild('Numero').NodeValue      := '';
    XMLDocument.DocumentElement.ChildNodes['Endereco'].AddChild('Complemento').NodeValue := '';
    XMLDocument.DocumentElement.ChildNodes['Endereco'].AddChild('Bairro').NodeValue      := '';
    XMLDocument.DocumentElement.ChildNodes['Endereco'].AddChild('Cidade').NodeValue      := '';
    XMLDocument.DocumentElement.ChildNodes['Endereco'].AddChild('Estado').NodeValue      := '';
    XMLDocument.DocumentElement.ChildNodes['Endereco'].AddChild('Pais').NodeValue        := '';

    XMLDocument.SaveToFile('D:\_Projetos Carlos\Avaliações\InfoSistema\Cadastro.xml');

  finally
    XMLDocument.Free;
  end;
end;

procedure TCadastroCliente.SetCPF(const Value: String);
begin
  FCPF := Value;
end;

procedure TCadastroCliente.SetEmail(const Value: String);
begin
  FEmail := Value;
end;

procedure TCadastroCliente.SetEndereco(const Value: TEndereco);
begin
  FEndereco := Value;
end;

procedure TCadastroCliente.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TCadastroCliente.SetRG(const Value: String);
begin
  FRG := Value;
end;

procedure TCadastroCliente.SetTelefone(const Value: String);
begin
  FTelefone := Value;
end;

end.
