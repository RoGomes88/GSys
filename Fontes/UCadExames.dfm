object frmCadExame: TfrmCadExame
  Left = 0
  Top = 0
  Caption = 'Cadastro de Exames'
  ClientHeight = 197
  ClientWidth = 698
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
    Width = 698
    Height = 197
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 696
      Height = 41
      Align = alTop
      TabOrder = 0
      object lblPesqPaciente: TLabel
        Left = 13
        Top = 12
        Width = 142
        Height = 16
        Caption = 'Registro do Paciente:'
        OnDblClick = lblPesqPacienteDblClick
      end
      object SpeedButton1: TSpeedButton
        Left = 270
        Top = 9
        Width = 27
        Height = 24
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
        OnClick = SpeedButton1Click
      end
      object btnConfirma: TSpeedButton
        Left = 298
        Top = 9
        Width = 27
        Height = 24
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
      object edtPesPaciente: TEdit
        Left = 165
        Top = 9
        Width = 103
        Height = 24
        TabOrder = 0
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 42
      Width = 696
      Height = 154
      Align = alClient
      TabOrder = 1
      object gpAmostra: TGroupBox
        Left = 1
        Top = 1
        Width = 694
        Height = 137
        Align = alTop
        Caption = 'Primeira Amostra'
        TabOrder = 0
        Visible = False
        object Label32: TLabel
          Left = 308
          Top = 84
          Width = 35
          Height = 16
          Caption = 'LPS: '
        end
        object Label33: TLabel
          Left = 174
          Top = 84
          Width = 36
          Height = 16
          Caption = 'PCR: '
        end
        object Label34: TLabel
          Left = 12
          Top = 84
          Width = 36
          Height = 16
          Caption = 'BNP: '
        end
        object Label35: TLabel
          Left = 12
          Top = 55
          Width = 67
          Height = 16
          Caption = 'TNF Alfa: '
        end
        object Label36: TLabel
          Left = 174
          Top = 55
          Width = 36
          Height = 16
          Caption = 'IL 1: '
        end
        object Label37: TLabel
          Left = 308
          Top = 55
          Width = 36
          Height = 16
          Caption = 'IL 6: '
        end
        object Label38: TLabel
          Left = 442
          Top = 55
          Width = 44
          Height = 16
          Caption = 'IL 10: '
        end
        object Label39: TLabel
          Left = 12
          Top = 24
          Width = 42
          Height = 16
          Caption = 'Data: '
        end
        object edtLPS: TEdit
          Left = 348
          Top = 81
          Width = 80
          Height = 24
          TabOrder = 7
        end
        object edtPCR: TEdit
          Left = 215
          Top = 81
          Width = 80
          Height = 24
          TabOrder = 6
        end
        object edtBNP: TEdit
          Left = 81
          Top = 81
          Width = 80
          Height = 24
          TabOrder = 5
        end
        object edtTNF: TEdit
          Left = 81
          Top = 50
          Width = 80
          Height = 24
          TabOrder = 1
        end
        object edtIL1: TEdit
          Left = 215
          Top = 50
          Width = 80
          Height = 24
          TabOrder = 2
        end
        object edtIL6: TEdit
          Left = 348
          Top = 52
          Width = 80
          Height = 24
          TabOrder = 3
        end
        object edtIL10: TEdit
          Left = 489
          Top = 52
          Width = 80
          Height = 24
          TabOrder = 4
        end
        object edtData: TDateTimePicker
          Left = 81
          Top = 20
          Width = 186
          Height = 24
          Date = 42740.970063842590000000
          Time = 42740.970063842590000000
          TabOrder = 0
        end
      end
    end
  end
end
