object frmCadastroCliente: TfrmCadastroCliente
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Cadastro de Cliente'
  ClientHeight = 480
  ClientWidth = 780
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = 48123
  Font.Height = -12
  Font.Name = 'Optima'
  Font.Style = [fsBold]
  KeyPreview = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 780
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    Color = 48123
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Optima'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object imgFechar: TImage
      Left = 745
      Top = 0
      Width = 35
      Height = 25
      Cursor = crHandPoint
      Align = alRight
      Center = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000140000
        001408060000008D891D0D000000097048597300000B1300000B1301009A9C18
        000001524944415478DAAD92314B033118862F8EE2A6531174EB24220E15511C
        A54B7F84E256A5D5A1E8E275EA2D16112DA8FF4310145C2A82E226B8E8D0CDD5
        419C3C9FC3DE192E5F7219FAC1CB4B2E6F9ECB974405232EA50FE2389EC1A695
        527D9FC5E497B10FF26F0690C979EC064DA103429D025813EBA24FB44EFE2103
        32398B3DA1496DCD1EA1AE05B68B1D699F12E802F9F714B886DD096B0DA8004B
        6B25392ABDE5161609C1AC7DADCD7CED9389A44BB142D17711CC000EA1217618
        F89571244A4A39766ADD9913E801156145C02DECDC9269023CF60602DBC42ED0
        98ED7FA801F4A410086C03BB74C074E80ED0532BD0010B83BF671309D06DA067
        06D00563417B986959A07532BD0C48B082DD0BB036C130D74532CEBFD31FB444
        F6310596B16734EE8239A05F6891FCABDEF22A768526F436AD37F2DF7E02AB91
        BF952E650E2B31791D7814F92A3620FF625CCAA8EA1790049715F45FE44B0000
        000049454E44AE426082}
      OnClick = imgFecharClick
      ExplicitLeft = 759
      ExplicitHeight = 21
    end
    object lblNomeForm: TLabel
      Left = 0
      Top = 0
      Width = 745
      Height = 25
      Align = alClient
      Caption = '>> Cadastro de Cliente'
      Layout = tlCenter
      ExplicitWidth = 128
      ExplicitHeight = 15
    end
  end
  object pgcCadastroCliente: TPageControl
    Left = 8
    Top = 32
    Width = 764
    Height = 448
    ActivePage = tbsCadastro
    Style = tsFlatButtons
    TabOrder = 1
    object tbsCadastro: TTabSheet
      Caption = 'Dados do Cadastro'
      object pnlCadastro: TPanel
        Left = 0
        Top = 0
        Width = 756
        Height = 415
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object lblCliente: TLabel
          Left = 7
          Top = 24
          Width = 33
          Height = 15
          Caption = 'Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 48123
          Font.Height = -12
          Font.Name = 'Optima'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblRG: TLabel
          Left = 7
          Top = 74
          Width = 16
          Height = 15
          Caption = 'RG'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 48123
          Font.Height = -12
          Font.Name = 'Optima'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblCPF: TLabel
          Left = 166
          Top = 75
          Width = 22
          Height = 15
          Caption = 'CPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 48123
          Font.Height = -12
          Font.Name = 'Optima'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblTelefone: TLabel
          Left = 326
          Top = 75
          Width = 48
          Height = 15
          Caption = 'Telefone'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 48123
          Font.Height = -12
          Font.Name = 'Optima'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblEmail: TLabel
          Left = 480
          Top = 74
          Width = 34
          Height = 15
          Caption = 'E-Mail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 48123
          Font.Height = -12
          Font.Name = 'Optima'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 2
          Top = 2
          Width = 752
          Height = 15
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'Dados Pessoais'
          Color = 48123
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Optima'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          ExplicitLeft = 13
          ExplicitTop = 24
          ExplicitWidth = 742
        end
        object Label2: TLabel
          Left = 2
          Top = 130
          Width = 750
          Height = 15
          Alignment = taCenter
          AutoSize = False
          Caption = 'Endere'#231'o'
          Color = 48123
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Optima'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object lblCEP: TLabel
          Left = 7
          Top = 151
          Width = 23
          Height = 15
          Caption = 'CEP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 48123
          Font.Height = -12
          Font.Name = 'Optima'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblLogradouro: TLabel
          Left = 110
          Top = 151
          Width = 66
          Height = 15
          Caption = 'Logradouro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 48123
          Font.Height = -12
          Font.Name = 'Optima'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblNumero: TLabel
          Left = 639
          Top = 151
          Width = 45
          Height = 15
          Caption = 'Numero'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 48123
          Font.Height = -12
          Font.Name = 'Optima'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblComlemento: TLabel
          Left = 7
          Top = 200
          Width = 79
          Height = 15
          Caption = 'Complemento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 48123
          Font.Height = -12
          Font.Name = 'Optima'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblBairro: TLabel
          Left = 326
          Top = 200
          Width = 35
          Height = 15
          Caption = 'Bairro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 48123
          Font.Height = -12
          Font.Name = 'Optima'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblCidade: TLabel
          Left = 7
          Top = 250
          Width = 39
          Height = 15
          Caption = 'Cidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 48123
          Font.Height = -12
          Font.Name = 'Optima'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblEstado: TLabel
          Left = 414
          Top = 250
          Width = 39
          Height = 15
          Caption = 'Estado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 48123
          Font.Height = -12
          Font.Name = 'Optima'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblPais: TLabel
          Left = 484
          Top = 250
          Width = 25
          Height = 15
          Caption = 'Pa'#237's'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 48123
          Font.Height = -12
          Font.Name = 'Optima'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtNome: TDBEdit
          Left = 7
          Top = 45
          Width = 746
          Height = 23
          DataField = 'NOME'
          DataSource = dsCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Optima'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object edtRG: TDBEdit
          Left = 7
          Top = 95
          Width = 153
          Height = 23
          DataField = 'RG'
          DataSource = dsCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Optima'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object edtCPF: TDBEdit
          Left = 166
          Top = 96
          Width = 154
          Height = 23
          DataField = 'CPF'
          DataSource = dsCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Optima'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object edtTelefone: TDBEdit
          Left = 326
          Top = 96
          Width = 146
          Height = 23
          DataField = 'TELEFONE'
          DataSource = dsCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Optima'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object edtEmail: TDBEdit
          Left = 478
          Top = 96
          Width = 275
          Height = 23
          CharCase = ecLowerCase
          DataField = 'EMAIL'
          DataSource = dsCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Optima'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object edtCEP: TDBEdit
          Left = 7
          Top = 171
          Width = 97
          Height = 23
          DataField = 'END_CEP'
          DataSource = dsCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Optima'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnExit = edtCEPExit
        end
        object edtLogradouro: TDBEdit
          Left = 110
          Top = 171
          Width = 523
          Height = 23
          DataField = 'END_LOGRADOURO'
          DataSource = dsCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Optima'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object edtNumero: TDBEdit
          Left = 639
          Top = 171
          Width = 114
          Height = 23
          DataField = 'END_NUMERO'
          DataSource = dsCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Optima'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object edtComplemento: TDBEdit
          Left = 7
          Top = 221
          Width = 313
          Height = 23
          DataField = 'END_COMPLEMETO'
          DataSource = dsCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Optima'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object edtBairro: TDBEdit
          Left = 326
          Top = 221
          Width = 427
          Height = 23
          DataField = 'END_BAIRRO'
          DataSource = dsCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Optima'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object edtCidade: TDBEdit
          Left = 7
          Top = 271
          Width = 401
          Height = 23
          DataField = 'END_CIDADE'
          DataSource = dsCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Optima'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
        object edtPais: TDBEdit
          Left = 484
          Top = 271
          Width = 269
          Height = 23
          DataField = 'END_PAIS'
          DataSource = dsCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Optima'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
        end
        object cboEstado: TDBComboBox
          Left = 414
          Top = 271
          Width = 64
          Height = 23
          Style = csDropDownList
          DataField = 'END_ESTADO'
          DataSource = dsCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Optima'
          Font.Style = []
          Items.Strings = (
            'AC'
            'AL'
            'AM'
            'AP'
            'BA'
            'CE'
            'DF'
            'ES'
            'GO'
            'MA'
            'MG'
            'MS'
            'MT'
            'PA'
            'PB'
            'PE'
            'PI'
            'PR'
            'RJ'
            'RN'
            'RO'
            'RR'
            'RS'
            'SC'
            'SE'
            'SP'
            'TO'
            'EX')
          ParentFont = False
          TabOrder = 11
        end
        object Panel4: TPanel
          Left = 7
          Top = 384
          Width = 100
          Height = 25
          BevelOuter = bvNone
          Color = 48123
          ParentBackground = False
          TabOrder = 13
          object btnNovo: TSpeedButton
            Left = 0
            Top = 0
            Width = 100
            Height = 25
            Align = alClient
            Caption = 'Novo [F2]'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Optima'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnNovoClick
            ExplicitLeft = 24
            ExplicitTop = 8
            ExplicitWidth = 23
            ExplicitHeight = 22
          end
        end
        object Panel5: TPanel
          Left = 111
          Top = 384
          Width = 100
          Height = 25
          BevelOuter = bvNone
          Color = 48123
          ParentBackground = False
          TabOrder = 14
          object btnAlterar: TSpeedButton
            Left = 0
            Top = 0
            Width = 100
            Height = 25
            Align = alClient
            Caption = 'Alterar [F3]'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Optima'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnAlterarClick
            ExplicitLeft = -2
            ExplicitTop = 2
          end
        end
        object Panel6: TPanel
          Left = 215
          Top = 384
          Width = 100
          Height = 25
          BevelOuter = bvNone
          Color = 48123
          ParentBackground = False
          TabOrder = 15
          object btnExluir: TSpeedButton
            Left = 0
            Top = 0
            Width = 100
            Height = 25
            Align = alClient
            Caption = 'Excluir [F4]'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Optima'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnExluirClick
            ExplicitLeft = 24
            ExplicitTop = 8
            ExplicitWidth = 23
            ExplicitHeight = 22
          end
        end
        object Panel7: TPanel
          Left = 543
          Top = 384
          Width = 100
          Height = 25
          BevelOuter = bvNone
          Color = 48123
          ParentBackground = False
          TabOrder = 16
          object btnGravar: TSpeedButton
            Left = 0
            Top = 0
            Width = 100
            Height = 25
            Align = alClient
            Caption = 'Gravar [ENTER]'
            Enabled = False
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Optima'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnGravarClick
            ExplicitLeft = 24
            ExplicitTop = 8
            ExplicitWidth = 23
            ExplicitHeight = 22
          end
        end
        object Panel8: TPanel
          Left = 647
          Top = 384
          Width = 100
          Height = 25
          BevelOuter = bvNone
          Color = 48123
          ParentBackground = False
          TabOrder = 17
          object btnCancelar: TSpeedButton
            Left = 0
            Top = 0
            Width = 100
            Height = 25
            Align = alClient
            Caption = 'Cancelar [ESC]'
            Enabled = False
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Optima'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnCancelarClick
            ExplicitLeft = 24
            ExplicitTop = 8
            ExplicitWidth = 23
            ExplicitHeight = 22
          end
        end
        object DBNavigator1: TDBNavigator
          Left = 564
          Top = 23
          Width = 188
          Height = 18
          DataSource = dsCliente
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Flat = True
          TabOrder = 18
        end
        object Panel10: TPanel
          Left = 319
          Top = 384
          Width = 100
          Height = 25
          BevelOuter = bvNone
          Color = 48123
          ParentBackground = False
          TabOrder = 19
          object btnPesquisar: TSpeedButton
            Left = 0
            Top = 0
            Width = 100
            Height = 25
            Align = alClient
            Caption = 'Pesquisar [F8]'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Optima'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnPesquisarClick
            ExplicitLeft = 2
            ExplicitTop = 2
          end
        end
        object Panel11: TPanel
          Left = 423
          Top = 384
          Width = 100
          Height = 25
          BevelOuter = bvNone
          Color = 48123
          ParentBackground = False
          TabOrder = 20
          object btnEmail: TSpeedButton
            Left = 0
            Top = 0
            Width = 100
            Height = 25
            Align = alClient
            Caption = 'E-Mail [F9]'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Optima'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnEmailClick
            ExplicitLeft = 2
            ExplicitTop = 2
          end
        end
      end
    end
    object tbsPesquisa: TTabSheet
      Caption = 'Consultar Cliente'
      ImageIndex = 1
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 756
        Height = 415
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object Label3: TLabel
          Left = 8
          Top = 3
          Width = 83
          Height = 15
          Caption = 'Pesquisar por:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 48123
          Font.Height = -12
          Font.Name = 'Optima'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 199
          Top = 3
          Width = 168
          Height = 15
          Caption = 'Digite o conteudo a pesquisar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 48123
          Font.Height = -12
          Font.Name = 'Optima'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cboPesquisarpor: TComboBox
          Left = 8
          Top = 24
          Width = 185
          Height = 23
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Optima'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnChange = edtConeudoPesquisaChange
        end
        object edtConeudoPesquisa: TEdit
          Left = 199
          Top = 24
          Width = 546
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Optima'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnChange = edtConeudoPesquisaChange
        end
        object DBGrid1: TDBGrid
          Left = 8
          Top = 53
          Width = 737
          Height = 358
          DataSource = dsCliente
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = 48123
          TitleFont.Height = -12
          TitleFont.Name = 'Optima'
          TitleFont.Style = [fsBold]
          OnDblClick = DBGrid1DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'NOME'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Optima'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RG'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Optima'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CPF'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Optima'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TELEFONE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Optima'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EMAIL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Optima'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'END_CEP'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Optima'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'END_LOGRADOURO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Optima'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'END_NUMERO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Optima'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'END_COMPLEMETO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Optima'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'END_BAIRRO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Optima'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'END_CIDADE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Optima'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'END_ESTADO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Optima'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'END_PAIS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Optima'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Width = 120
              Visible = True
            end>
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 778
    Top = 25
    Width = 2
    Height = 453
    Align = alRight
    BevelOuter = bvNone
    Caption = 'Panel1'
    Color = 48123
    ParentBackground = False
    TabOrder = 2
  end
  object Panel2: TPanel
    Left = 0
    Top = 25
    Width = 2
    Height = 453
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Panel1'
    Color = 48123
    ParentBackground = False
    TabOrder = 3
  end
  object Panel3: TPanel
    Left = 0
    Top = 478
    Width = 780
    Height = 2
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Panel1'
    Color = 48123
    ParentBackground = False
    TabOrder = 4
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 300
    Top = 24
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    FilterOptions = [foCaseInsensitive]
    Params = <>
    Left = 360
    Top = 24
    object cdsClienteNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 255
    end
    object cdsClienteRG: TStringField
      FieldName = 'RG'
      Required = True
      EditMask = '00000000-9;1;_'
      Size = 10
    end
    object cdsClienteCPF: TStringField
      FieldName = 'CPF'
      Required = True
      EditMask = '000.000.000-00;1;_'
      Size = 14
    end
    object cdsClienteTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      EditMask = '(00)00000-0009;1;_'
    end
    object cdsClienteEMAIL: TStringField
      DisplayLabel = 'E-Mail'
      FieldName = 'EMAIL'
      Required = True
      Size = 255
    end
    object cdsClienteEND_CEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'END_CEP'
      Required = True
      EditMask = '00000-000;1;_'
      Size = 10
    end
    object cdsClienteEND_LOGRADOURO: TStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'END_LOGRADOURO'
      Required = True
      Size = 255
    end
    object cdsClienteEND_NUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'END_NUMERO'
      Required = True
      Size = 10
    end
    object cdsClienteEND_COMPLEMETO: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'END_COMPLEMETO'
      Size = 255
    end
    object cdsClienteEND_BAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'END_BAIRRO'
      Required = True
      Size = 255
    end
    object cdsClienteEND_CIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'END_CIDADE'
      Required = True
      Size = 255
    end
    object cdsClienteEND_ESTADO: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'END_ESTADO'
      Required = True
      Size = 2
    end
    object cdsClienteEND_PAIS: TStringField
      DisplayLabel = 'Pa'#237's'
      FieldName = 'END_PAIS'
      Size = 255
    end
  end
end
