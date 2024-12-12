object frmCadPaciente: TfrmCadPaciente
  Left = 0
  Top = 0
  Caption = 'Cadastro de Paciente'
  ClientHeight = 315
  ClientWidth = 739
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 739
    Height = 315
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 737
      Height = 41
      Align = alTop
      TabOrder = 0
      object btnPesquisa: TSpeedButton
        Left = 284
        Top = 11
        Width = 24
        Height = 21
        Hint = 'Pesquisar'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33033333333333333F7F3333333333333000333333333333F777333333333333
          000333333333333F777333333333333000333333333333F77733333333333300
          033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
          33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
          3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
          33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
          333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
          333333773FF77333333333370007333333333333777333333333}
        NumGlyphs = 2
        OnClick = btnPesquisaClick
      end
      object btnInserir: TSpeedButton
        Left = 307
        Top = 11
        Width = 24
        Height = 21
        Hint = 'Novo'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
          333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
          0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
          0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
          33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
          B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
          3BB33773333773333773B333333B3333333B7333333733333337}
        NumGlyphs = 2
        OnClick = btnInserirClick
      end
      object btnEditar: TSpeedButton
        Left = 330
        Top = 11
        Width = 24
        Height = 21
        Hint = 'Editar'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
          000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
          00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
          F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
          0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
          FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
          FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
          0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
          00333377737FFFFF773333303300000003333337337777777333}
        NumGlyphs = 2
        OnClick = btnEditarClick
      end
      object btnApagar: TSpeedButton
        Left = 354
        Top = 11
        Width = 24
        Height = 21
        Hint = 'Apagar'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
          305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
          005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
          B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
          B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
          B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
          B0557777FF577777F7F500000E055550805577777F7555575755500000555555
          05555777775555557F5555000555555505555577755555557555}
        NumGlyphs = 2
        OnClick = btnApagarClick
      end
      object btnConfirma: TSpeedButton
        Left = 379
        Top = 11
        Width = 24
        Height = 21
        Hint = 'Apagar'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          555555555555555555555555555555555555555555FF55555555555559055555
          55555555577FF5555555555599905555555555557777F5555555555599905555
          555555557777FF5555555559999905555555555777777F555555559999990555
          5555557777777FF5555557990599905555555777757777F55555790555599055
          55557775555777FF5555555555599905555555555557777F5555555555559905
          555555555555777FF5555555555559905555555555555777FF55555555555579
          05555555555555777FF5555555555557905555555555555777FF555555555555
          5990555555555555577755555555555555555555555555555555}
        NumGlyphs = 2
        OnClick = btnConfirmaClick
      end
      object lblPesqPaciente: TLabel
        Left = 16
        Top = 14
        Width = 142
        Height = 16
        Caption = 'Registro do Paciente:'
        OnDblClick = lblPesqPacienteDblClick
      end
      object edtPesquisa: TEdit
        Left = 161
        Top = 11
        Width = 121
        Height = 24
        TabOrder = 0
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 42
      Width = 737
      Height = 272
      Align = alClient
      TabOrder = 1
      object pqPaciente: TPageControl
        Left = 1
        Top = 1
        Width = 735
        Height = 270
        ActivePage = TabSheet1
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object tabDados: TTabSheet
          Caption = 'Dados'
          object Label1: TLabel
            Left = 11
            Top = 15
            Width = 130
            Height = 16
            Caption = 'Nome do Paciente: '
          end
          object Label2: TLabel
            Left = 11
            Top = 55
            Width = 163
            Height = 16
            Caption = 'N'#176' Registro no Hospital: '
          end
          object Label3: TLabel
            Left = 11
            Top = 95
            Width = 123
            Height = 16
            Caption = 'Data Nascimento: '
          end
          object Label4: TLabel
            Left = 11
            Top = 135
            Width = 93
            Height = 16
            Caption = 'Tipo Doen'#231'a: '
          end
          object edtNome: TEdit
            Left = 184
            Top = 12
            Width = 417
            Height = 24
            TabOrder = 0
          end
          object edtRegistro: TEdit
            Left = 184
            Top = 52
            Width = 201
            Height = 24
            TabOrder = 1
          end
          object edtDataNasc: TDateTimePicker
            Left = 184
            Top = 95
            Width = 186
            Height = 24
            Date = 42741.949972175930000000
            Time = 42741.949972175930000000
            TabOrder = 2
          end
          object mmTpDoenca: TMemo
            Left = 184
            Top = 132
            Width = 417
            Height = 89
            TabOrder = 3
          end
        end
        object TabSheet1: TTabSheet
          Caption = 'Endere'#231'o'
          ImageIndex = 1
          object Label5: TLabel
            Left = 11
            Top = 15
            Width = 72
            Height = 16
            Caption = 'Endere'#231'o: '
          end
          object Label6: TLabel
            Left = 11
            Top = 55
            Width = 94
            Height = 16
            Caption = 'Complemento:'
          end
          object Label7: TLabel
            Left = 350
            Top = 95
            Width = 55
            Height = 16
            Caption = 'Cidade: '
          end
          object Label8: TLabel
            Left = 11
            Top = 95
            Width = 48
            Height = 16
            Caption = 'Bairro: '
          end
          object Label9: TLabel
            Left = 591
            Top = 95
            Width = 56
            Height = 16
            Caption = 'Estado: '
          end
          object Label10: TLabel
            Left = 11
            Top = 135
            Width = 62
            Height = 16
            Caption = 'Telefone:'
          end
          object Label11: TLabel
            Left = 350
            Top = 135
            Width = 55
            Height = 16
            Caption = 'Celular: '
          end
          object Label12: TLabel
            Left = 11
            Top = 175
            Width = 59
            Height = 16
            Caption = 'Recado: '
          end
          object Label13: TLabel
            Left = 350
            Top = 175
            Width = 64
            Height = 16
            Caption = 'Contato: '
          end
          object edtEnd: TEdit
            Left = 116
            Top = 12
            Width = 594
            Height = 24
            TabOrder = 0
          end
          object edtComplemento: TEdit
            Left = 116
            Top = 52
            Width = 594
            Height = 24
            TabOrder = 1
          end
          object edtCidade: TEdit
            Left = 411
            Top = 92
            Width = 169
            Height = 24
            TabOrder = 3
          end
          object edtBairro: TEdit
            Left = 116
            Top = 92
            Width = 169
            Height = 24
            TabOrder = 2
          end
          object edtTelefone: TEdit
            Left = 116
            Top = 132
            Width = 225
            Height = 24
            TabOrder = 5
          end
          object edtCelular: TEdit
            Left = 411
            Top = 132
            Width = 169
            Height = 24
            TabOrder = 6
          end
          object edtRecado: TEdit
            Left = 116
            Top = 172
            Width = 225
            Height = 24
            TabOrder = 7
          end
          object edtContato: TEdit
            Left = 411
            Top = 172
            Width = 169
            Height = 24
            TabOrder = 8
          end
          object cbEstado: TComboBox
            Left = 652
            Top = 92
            Width = 58
            Height = 24
            ItemIndex = 0
            TabOrder = 4
            Text = 'SELECIONE'
            Items.Strings = (
              'SELECIONE'
              'AC'
              'AL'
              'AP'
              'AM'
              'BA'
              'CE'
              'DF'
              'ES'
              'GO'
              'MA'
              'MT'
              'MS'
              'MG'
              'PA'
              'PB'
              'PR'
              'PE'
              'PI'
              'RJ'
              'RN'
              'RS'
              'RO'
              'RR'
              'SC'
              'SP'
              'SE'
              'TO')
          end
        end
      end
    end
  end
end
