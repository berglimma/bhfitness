object FRM_Busca: TFRM_Busca
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Busca de Alunos'
  ClientHeight = 235
  ClientWidth = 606
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 4
    Top = 60
    Width = 127
    Height = 13
    Caption = 'Resultado da pesquisa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 527
    Top = 198
    Width = 74
    Height = 22
    Caption = 'Fechar'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FF000326000434000443000443000436000428FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00043800043800016400008700
      008C00008C00008900016700043E00043EFF00FFFF00FFFF00FFFF00FFFF00FF
      00034400025400009100009300008C00008700008C00008C0000910000930002
      57000428FF00FFFF00FFFF00FF000A5700015F0000A700009A00008C00008700
      008700008900008900008900008C00009300025700043EFF00FFFF00FF000A57
      0000B60000AE00009D00008C000C94D4DAF3E7EBF82B44AF0000890000890000
      8C00009300043EFF00FF000A5B0004890000CD0000AE00009300008E00008C72
      84CEFFFFFFF4F6FC223BAC0000890000890000910001670004340001420000B9
      0000CD0000B600009300008C00008E00008C6074C6FCFCFEF3F4FC1F38A90000
      8900008E0000800004340000590001D80002DBACBCFBA9B8F5A7B6F0A7B7F4A1
      B1F2A6B4F2F6F7FCFFFFFFEEF0FA3B53B700008C00008C00043C00006B011BE2
      000BE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFEFFFFFFFFFFFFA2B0
      E100008E00008C00044300006B193DEF0125E2193BDC193CE3183BE3183BE30A
      2EDD667FEDF8FAFEFFFFFF8295DF000AA900009A00008700043900006B0E32EF
      5A76F20001E10000D00001DD0001DD173AE3DAE1FCFFFFFF6C82DD0001B20000
      A700009D000077000439FF00FF000AD290A6FC2D50EA0000C30000CD0017DDF2
      F4FFFFFFFF6B84EB0000B10000AC0000A20000A900025BFF00FFFF00FF0000C8
      1034E4ABBAF33C5EFA000EE70215DA92A6F9748DF80001C50000BB0000B60000
      B900009600025BFF00FFFF00FFFF00FF0000A7294CE6C6D1FF7F98FF1D41F408
      26F00218EF041CEF000EE10005E10000AC000257FF00FFFF00FFFF00FFFF00FF
      FF00FF0327E41135F27D96FFADBDFF91A6FF748FFF5574FC0529E10002BB0002
      BBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000CD0051EEF0E
      32F20A2AF1000EEA0006A0FF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object BtnReceber: TSpeedButton
    Left = 527
    Top = 197
    Width = 74
    Height = 22
    Caption = 'Fechar'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FF000326000434000443000443000436000428FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00043800043800016400008700
      008C00008C00008900016700043E00043EFF00FFFF00FFFF00FFFF00FFFF00FF
      00034400025400009100009300008C00008700008C00008C0000910000930002
      57000428FF00FFFF00FFFF00FF000A5700015F0000A700009A00008C00008700
      008700008900008900008900008C00009300025700043EFF00FFFF00FF000A57
      0000B60000AE00009D00008C000C94D4DAF3E7EBF82B44AF0000890000890000
      8C00009300043EFF00FF000A5B0004890000CD0000AE00009300008E00008C72
      84CEFFFFFFF4F6FC223BAC0000890000890000910001670004340001420000B9
      0000CD0000B600009300008C00008E00008C6074C6FCFCFEF3F4FC1F38A90000
      8900008E0000800004340000590001D80002DBACBCFBA9B8F5A7B6F0A7B7F4A1
      B1F2A6B4F2F6F7FCFFFFFFEEF0FA3B53B700008C00008C00043C00006B011BE2
      000BE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFEFFFFFFFFFFFFA2B0
      E100008E00008C00044300006B193DEF0125E2193BDC193CE3183BE3183BE30A
      2EDD667FEDF8FAFEFFFFFF8295DF000AA900009A00008700043900006B0E32EF
      5A76F20001E10000D00001DD0001DD173AE3DAE1FCFFFFFF6C82DD0001B20000
      A700009D000077000439FF00FF000AD290A6FC2D50EA0000C30000CD0017DDF2
      F4FFFFFFFF6B84EB0000B10000AC0000A20000A900025BFF00FFFF00FF0000C8
      1034E4ABBAF33C5EFA000EE70215DA92A6F9748DF80001C50000BB0000B60000
      B900009600025BFF00FFFF00FFFF00FF0000A7294CE6C6D1FF7F98FF1D41F408
      26F00218EF041CEF000EE10005E10000AC000257FF00FFFF00FFFF00FFFF00FF
      FF00FF0327E41135F27D96FFADBDFF91A6FF748FFF5574FC0529E10002BB0002
      BBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000CD0051EEF0E
      32F20A2AF1000EEA0006A0FF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentFont = False
    OnClick = SpeedButton2Click
  end
  object lblNaoEncontrado: TLabel
    Left = 0
    Top = 221
    Width = 606
    Height = 14
    Align = alBottom
    Alignment = taCenter
    Caption = 'Aluno n'#227'o encontrado!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
    Visible = False
    ExplicitWidth = 126
  end
  object GroupBox1: TGroupBox
    Left = 4
    Top = 4
    Width = 597
    Height = 52
    Caption = '[ Pesquise pelo Nome do Aluno ]'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object edbusca: TEdit
      Left = 9
      Top = 20
      Width = 576
      Height = 22
      CharCase = ecUpperCase
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnChange = edbuscaChange
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 73
    Width = 601
    Height = 122
    Color = clInfoBk
    FixedColor = clWhite
    GradientEndColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome do Aluno'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 380
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Title.Caption = 'Cidade'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clNavy
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 180
        Visible = True
      end>
  end
end
