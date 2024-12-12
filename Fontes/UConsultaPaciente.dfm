object frmConsultaPaciente: TfrmConsultaPaciente
  Left = 0
  Top = 0
  Caption = 'Consulta de Paciente'
  ClientHeight = 356
  ClientWidth = 790
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
    Width = 790
    Height = 356
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 788
      Height = 41
      Align = alTop
      TabOrder = 0
      object SpeedButton1: TSpeedButton
        Left = 142
        Top = 11
        Width = 24
        Height = 21
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
      end
      object edtPesquisa: TEdit
        Left = 16
        Top = 11
        Width = 121
        Height = 24
        TabOrder = 0
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 42
      Width = 788
      Height = 313
      Align = alClient
      TabOrder = 1
      object pgPaciente: TPageControl
        Left = 1
        Top = 1
        Width = 786
        Height = 311
        ActivePage = tabExame
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
            Caption = 'N'#176' Registro no Hostipal: '
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
          object Edit1: TEdit
            Left = 184
            Top = 12
            Width = 417
            Height = 24
            TabOrder = 0
          end
          object Edit2: TEdit
            Left = 184
            Top = 52
            Width = 201
            Height = 24
            TabOrder = 1
          end
          object DateTimePicker1: TDateTimePicker
            Left = 184
            Top = 92
            Width = 186
            Height = 24
            Date = 42740.949972175930000000
            Time = 42740.949972175930000000
            TabOrder = 2
          end
          object Memo1: TMemo
            Left = 184
            Top = 132
            Width = 417
            Height = 89
            TabOrder = 3
          end
        end
        object tabEnd: TTabSheet
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
            Left = 11
            Top = 95
            Width = 55
            Height = 16
            Caption = 'Cidade: '
          end
          object Label8: TLabel
            Left = 350
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
            Width = 63
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
          object Edit3: TEdit
            Left = 116
            Top = 12
            Width = 594
            Height = 24
            TabOrder = 0
          end
          object Edit4: TEdit
            Left = 116
            Top = 52
            Width = 594
            Height = 24
            TabOrder = 1
          end
          object Edit5: TEdit
            Left = 116
            Top = 92
            Width = 225
            Height = 24
            TabOrder = 2
          end
          object Edit6: TEdit
            Left = 415
            Top = 92
            Width = 169
            Height = 24
            TabOrder = 3
          end
          object Edit7: TEdit
            Left = 116
            Top = 132
            Width = 225
            Height = 24
            TabOrder = 4
          end
          object Edit8: TEdit
            Left = 415
            Top = 132
            Width = 169
            Height = 24
            TabOrder = 5
          end
          object Edit9: TEdit
            Left = 116
            Top = 172
            Width = 225
            Height = 24
            TabOrder = 6
          end
          object Edit10: TEdit
            Left = 415
            Top = 172
            Width = 169
            Height = 24
            TabOrder = 7
          end
          object ComboBox1: TComboBox
            Left = 652
            Top = 92
            Width = 58
            Height = 24
            TabOrder = 8
            Text = 'ComboBox1'
          end
        end
        object tabExame: TTabSheet
          Caption = 'Exames'
          ImageIndex = 2
          object GroupBox1: TGroupBox
            Left = 0
            Top = 137
            Width = 778
            Height = 137
            Align = alTop
            Caption = 'Segunda Amostra'
            TabOrder = 0
            object Label21: TLabel
              Left = 308
              Top = 84
              Width = 35
              Height = 16
              Caption = 'LPS: '
            end
            object Label20: TLabel
              Left = 174
              Top = 84
              Width = 36
              Height = 16
              Caption = 'PCR: '
            end
            object Label19: TLabel
              Left = 12
              Top = 84
              Width = 36
              Height = 16
              Caption = 'BNP: '
            end
            object Label15: TLabel
              Left = 12
              Top = 55
              Width = 67
              Height = 16
              Caption = 'TNF Alfa: '
            end
            object Label16: TLabel
              Left = 174
              Top = 55
              Width = 36
              Height = 16
              Caption = 'IL 1: '
            end
            object Label17: TLabel
              Left = 308
              Top = 55
              Width = 36
              Height = 16
              Caption = 'IL 6: '
            end
            object Label18: TLabel
              Left = 442
              Top = 55
              Width = 44
              Height = 16
              Caption = 'IL 10: '
            end
            object Label14: TLabel
              Left = 12
              Top = 24
              Width = 42
              Height = 16
              Caption = 'Data: '
            end
            object Edit18: TEdit
              Left = 348
              Top = 81
              Width = 80
              Height = 24
              TabOrder = 0
            end
            object Edit17: TEdit
              Left = 215
              Top = 81
              Width = 80
              Height = 24
              TabOrder = 1
            end
            object Edit16: TEdit
              Left = 81
              Top = 81
              Width = 80
              Height = 24
              TabOrder = 2
            end
            object Edit12: TEdit
              Left = 81
              Top = 50
              Width = 80
              Height = 24
              TabOrder = 3
            end
            object Edit13: TEdit
              Left = 215
              Top = 50
              Width = 80
              Height = 24
              TabOrder = 4
            end
            object Edit14: TEdit
              Left = 348
              Top = 52
              Width = 80
              Height = 24
              TabOrder = 5
            end
            object Edit15: TEdit
              Left = 489
              Top = 52
              Width = 80
              Height = 24
              TabOrder = 6
            end
            object DateTimePicker2: TDateTimePicker
              Left = 81
              Top = 20
              Width = 186
              Height = 24
              Date = 42740.970063842590000000
              Time = 42740.970063842590000000
              TabOrder = 7
            end
          end
          object GroupBox2: TGroupBox
            Left = 0
            Top = 0
            Width = 778
            Height = 137
            Align = alTop
            Caption = 'Primeira Amostra'
            TabOrder = 1
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
            object Edit11: TEdit
              Left = 348
              Top = 81
              Width = 80
              Height = 24
              TabOrder = 0
            end
            object Edit19: TEdit
              Left = 215
              Top = 81
              Width = 80
              Height = 24
              TabOrder = 1
            end
            object Edit20: TEdit
              Left = 81
              Top = 81
              Width = 80
              Height = 24
              TabOrder = 2
            end
            object Edit21: TEdit
              Left = 81
              Top = 50
              Width = 80
              Height = 24
              TabOrder = 3
            end
            object Edit22: TEdit
              Left = 215
              Top = 50
              Width = 80
              Height = 24
              TabOrder = 4
            end
            object Edit23: TEdit
              Left = 348
              Top = 52
              Width = 80
              Height = 24
              TabOrder = 5
            end
            object Edit24: TEdit
              Left = 489
              Top = 52
              Width = 80
              Height = 24
              TabOrder = 6
            end
            object DateTimePicker3: TDateTimePicker
              Left = 81
              Top = 20
              Width = 186
              Height = 24
              Date = 42740.970063842590000000
              Time = 42740.970063842590000000
              TabOrder = 7
            end
          end
        end
      end
    end
  end
end
