object FRM_Modalidades: TFRM_Modalidades
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro de Modalidades'
  ClientHeight = 166
  ClientWidth = 448
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 432
    Height = 88
    ActivePage = TabSheet1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object TabSheet1: TTabSheet
      Caption = 'Cadastro de Modalidades'
      object Label1: TLabel
        Left = 18
        Top = 11
        Width = 32
        Height = 13
        Caption = 'Nome'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 302
        Top = 11
        Width = 29
        Height = 13
        Caption = 'Valor'
        FocusControl = DBEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 135
    Width = 448
    Height = 31
    Align = alBottom
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object BtnIncluir: TSpeedButton
      Left = 1
      Top = 1
      Width = 79
      Height = 29
      Align = alLeft
      Caption = 'Nova'
      Flat = True
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000220B0000220B00000001000000010000EFA53900EFA5
        5200FFB55200E7AD6B00F7BD6B00AD7B7300AD847300B5847300AD7B7B00AD73
        84009C7B8400A57B8400AD7B8400B57B8400B5848400BD848400E7B58400BD84
        8C00C68C8C00CE948C00DEA58C00EFC68C00F7C68C00D6949400D69C9400DE9C
        9400DEA59400E7A59400B5AD9400EFCE9400B5AD9C00EFCE9C00F7CE9C00F7D6
        9C00CEADA500BDB5A500DEC6A500EFCEA500F7CEA500F7D6A500CEBDAD00D6C6
        AD00F7D6AD00F7D6B500F7DEB500DEC6BD00E7CEBD00EFD6BD00F7DEBD00E7CE
        C600EFCEC600EFD6C600EFDEC600F7DEC600F7E7C600FFE7C600E7D6CE00E7DE
        CE00F7DECE00F7E7CE00FFE7CE00E7D6D600EFDED600F7E7D600FFE7D600FFEF
        D600EFDEDE00F7E7DE00F7EFDE00FFEFDE00F7EFE700FFEFE700FFF7E700F7EF
        EF00FFF7EF00FFF7F700FFFFF700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D4D4D080E0E
        0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E4D4D4D4D4D093436302C2B2A271F1F1D
        1D1D1D1D1D1D1D0E4D4D4D4D4D09343635302B2A2A251F1F1D1D1D1D1D1D1D0E
        4D4D4D4D4D093A3B3535302B2A2A251F1F1D1D1D1D1D1D0E4D4D4D4D4D093B3F
        3B3530302B2A2A251F1F1D1D1D1D1D0E4D4D4D4D4D093F443F3B3535302B2A2A
        251F1F1D1D1D1D0E4D4D4D4D4D0C43443F3B3B3535302B2A2A251F1F1D1D1D0E
        4D4D4D4D4D0D4646443F3B3B3530302B2A2A251F1F1D1D0E4D4D4D4D4D0E464A
        46443F3F3B3530302B2A2A251F1F1D0E4D4D4D4D4D0F494A4646443F3B3B3530
        302B2A2A251F1D0E4D4D4D4D4D114B4C4A4646443F3B3B3535302B2A2A251F0E
        4D4D4D4D4D124B4E4B4A4646443F3B3B3530302B2A2A250E4D4D4D4D4D124B4E
        4E4B4A4646443F3B3B3530302B2A250E4D4D4D4D4D124B4E4E4E4B4A4646443F
        3B3B3530302B2A0E4D4D4D4D4D134B4E4E4E4E4B4A4646443F3B3B353030240B
        4D4D4D4D4D134B4E4E4E4E4E4B4A4646443F3B3B2F281C0A4D4D4D4D4D184B4E
        4E4E4E4E4E4B4A464444443928231E0A4D4D4D4D4D184B4E4E4E4E4E4E4E4B4A
        483E0706050505054D4D4D4D4D1A4B4E4E4E4E4E4E4E4C4B4A3107100301000E
        4D4D4D4D4D1A4B4E4E4E4E4E4E4E4E4E4C31071504020E4D4D4D4D4D4D1A4B4E
        4E4E4E4E4E4E4E4E4E380715040E4D4D4D4D4D4D4D1A4E4E4E4E4E4E4E4E4E4E
        4E3D07150E4D4D4D4D4D4D4D4D142E2F2F322E2E2E2E2D2D2D22070E4D4D4D4D
        4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D}
      OnClick = BtnIncluirClick
      ExplicitLeft = 2
    end
    object BtnExcluir: TSpeedButton
      Left = 80
      Top = 1
      Width = 79
      Height = 29
      Align = alLeft
      Caption = 'Excluir'
      Flat = True
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000220B0000220B000000010000000100000031DE000031
        E7000031EF000031F700FF00FF000031FF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00040404040404
        0404040404040404000004000004040404040404040404000004040000000404
        0404040404040000040404000000000404040404040000040404040402000000
        0404040400000404040404040404000000040000000404040404040404040400
        0101010004040404040404040404040401010204040404040404040404040400
        0201020304040404040404040404030201040403030404040404040404050203
        0404040405030404040404040303050404040404040303040404040303030404
        0404040404040403040403030304040404040404040404040404030304040404
        0404040404040404040404040404040404040404040404040404}
      OnClick = BtnExcluirClick
      ExplicitLeft = 81
    end
    object BtnGravar: TSpeedButton
      Left = 159
      Top = 1
      Width = 79
      Height = 29
      Align = alLeft
      Caption = 'Gravar'
      Flat = True
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF7F2B287F2B287F2B287F2B28A18283A18283A18283A18283
        A18283A18283A18283A18283A18283A18283A182837F2B287F2B287F2B287F2B
        28FF00FFFF00FFFF00FFFF00FF7F2B28B04E4CC24A4ABA4A49B441418B5959E2
        D9D9C9BDBDC4AFADE2CFCCF3EBE7F3EDEAE5DEDEDAE0DEDAE0DEB165647A1817
        822121A53939AD44457F2B28FF00FFFF00FFFF00FF7F2B28B4514FC24A4AC24E
        4EBB45468B3C3DE2D9D9791617791617AC4E4CF4E7E3FFFFFCFAF6F2EFF6F3EF
        F6F3B16564791515822020A93A3AB448487F2B28FF00FFFF00FFFF00FF7F2B28
        B2504EC24A4AC04D4DB844448C4040E2D9D9791617791617B25350E3D5D3FAF8
        F4FEF8F4FCFFFBFCFFFFB16564791515822020A73A3AB247477F2B28FF00FFFF
        00FFFF00FF7F2B28B2504EC24A4AC04D4DB743438F4141E2D9D9791617791617
        B25350CFC0BFEBEAE7FAF4F2FFFFFFFCFFFFB16564791515822020A73A3AB247
        477F2B28FF00FFFF00FFFF00FF7F2B28B2504EC24A4AC04D4DB74343914241E2
        D9D9791617791617B25350B0A09FD4D4D1EEE7E3FFFFFFFCFFFFB16564781414
        832020A73A3AB247477F2B28FF00FFFF00FFFF00FF7F2B28B2504EC24A4AC04D
        4DB54242934343E2D9D9791617791617B253508C8382A7AFADD3D4D0FCFFFFFC
        FFFFB16564741111801E1EA63939B247477F2B28FF00FFFF00FFFF00FF7F2B28
        B2504EC24A4ABF4C4CB744449C4141E2D9D9E2D9D9E2D9D9E2D9D9E2D9D9E2D9
        D9E2D9D9E2D9D9E2D9D9B16564831C1C8C2727AB3D3DB246477F2B28FF00FFFF
        00FFFF00FF7F2B28B2514EC24A4ABF4B4BBD4A49B74646BF5B5BCE7777D07B7B
        CC7475CE6E6FCB6C6CC76868C46868C05A5AB64443B44141B64343BD4949B145
        467F2B28FF00FFFF00FFFF00FF7F2B28C24A4AC24A4AB24443B74B49BC5151BB
        504FBB4D4CBB4D4DBB4D4DBB4D4DBB4D4CBB4D4CBA4C4BBB504FC05857C15B5A
        C15757C14E4EB044457F2B28FF00FFFF00FFFF00FF7F2B28C24A4AC24A4ACA8C
        8ACA8C8ACB8F8CCC908ECC908ECC908ECC908ECC908ECC908ECC908FCC908FCC
        908FCC908ECC918FCB908EC05555C24A4A7F2B28FF00FFFF00FFFF00FF7F2B28
        C24A4AC24A4AD7B4B1FEFCFCFEFCFCFFFEFEFFFEFEFFFEFEFFFEFEFFFEFEFFFE
        FEFFFEFEFFFEFEFFFEFEFEFCFCFCFBFBDDB7B6B54B4BC24A4A7F2B28FF00FFFF
        00FFFF00FF7F2B28C24A4AC24A4AD9B8B6FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEDDB7B7B44948C24A
        4A7F2B28FF00FFFF00FFFF00FF7F2B28C24A4AC24A4AD9B6B4FEFEFEFEFEFEBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFEFEFEFEFEFE
        DDB7B6B44948C24A4A7F2B28FF00FFFF00FFFF00FF7F2B28C24A4AC24A4AD9B6
        B4FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEDDB7B6B44948C24A4A7F2B28FF00FFFF00FFFF00FF7F2B28
        C24A4AC24A4AD9B6B4FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEDDB7B6B44948C24A4A7F2B28FF00FFFF
        00FFFF00FF7F2B28C24A4AC24A4AD9B6B4FEFEFEFEFEFEBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFEFEFEFEFEFEDDB7B6B44948C24A
        4A7F2B28FF00FFFF00FFFF00FF7F2B28C24A4AC24A4AD9B6B4FEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        DDB7B6B44948C24A4A7F2B28FF00FFFF00FFFF00FF7F2B28C24A4AC24A4AD9B6
        B4FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEDDB7B6B44948C24A4A7F2B28FF00FFFF00FFFF00FF7F2B28
        C24A4AC24A4AD9B7B5FEFEFEFEFEFEBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFFEFEFEFEFEFEDDB7B6B54A4AC24A4A7F2B28FF00FFFF
        00FFFF00FF7F2B28C24A4AC24A4AD3B1AFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEDDB8B6C24A4AC24A
        4A7F2B28FF00FFFF00FFFF00FFFF00FF7F2B287F2B28C1A09EFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        E0BAB77F2B287F2B28FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      OnClick = BtnGravarClick
      ExplicitLeft = 160
    end
    object BtnCancelar: TSpeedButton
      Left = 238
      Top = 1
      Width = 79
      Height = 29
      Align = alLeft
      Caption = 'Cancelar'
      Flat = True
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000220B0000220B00000001000000010000942900009C31
        00009C390000A5390000A5420000AD420000AD4A0000B54A0000B5520000BD52
        0000BD5A0000C65A0000C6630000CE630000CE6B0000D66B0000D67300009C39
        0800A5390800A5420800AD420800AD4A0800B5520800BD5A0800CE630800AD4A
        1000B5521000B55A1000BD5A1000C6631000DE7B1000BD5A1800BD631800C663
        1800CE731800D6731800DE7B1800DE841800C6632100C66B2100D67B2100DE84
        2100EF942100D6842900E78C2900EF942900DE8C3100EF943100F79C3100F7A5
        3100E7943900F7A53900FFA53900F7A54200FFAD4200FFB54200F7AD4A00FFAD
        4A00FFB54A00FFB55200FFBD5200FFC65200FF00FF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003E3E3E3E3E3E
        3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E
        1313133E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E13080A13113E3E3E3E
        3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E120A0F0A13133E3E3E3E3E3E3E3E3E3E3E
        3E3E3E3E3E3E3E13130B0F0A13133E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E
        11130C0E0811113E3E3E131111111111111111111111133E3E11150D0E151111
        3E3E131B1B16151515151515071513133E3E11150E0C13113E3E192F2C1E0E0E
        0E0E0E0E0E0F16113E3E3E11160E0A11113E1935332C25180808080808161313
        3E3E3E3E110A0E15113E193839322F24131111111111133E3E3E3E3E11150E0A
        111119353B272E302313113E3E3E3E3E3E3E3E3E3E130D0C131119353C1F1935
        332212113E3E3E3E3E3E3E3E3E130C0C131119353C20002038332213113E3E3E
        3E3E3E3E3E130C0C131119353B2002022739332813113E3E3E3E3E3E11150E0C
        131119353B20023E022638362915113E3E3E3E13110A0E0A113E19353B20023E
        3E011F35362C1A1111111111080E0E14113E19353B20023E3E3E021932363022
        1B15150A0E0E16113E3E19383C20023E3E3E3E02112732302D1E100E0B15113E
        3E3E132B3219113E3E3E3E3E1102131B2120161313113E3E3E3E3E1111113E3E
        3E3E3E3E3E3E1111111111113E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E
        3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E
        3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E}
      OnClick = BtnCancelarClick
      ExplicitLeft = 239
    end
    object SpeedButton5: TSpeedButton
      Left = 375
      Top = 1
      Width = 72
      Height = 29
      Align = alRight
      Caption = 'Fechar'
      Flat = True
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000320B0000320B0000000100000001000018004A002100
        520029005A0029085A002900630031086B0042086B003100730031087B004208
        7B00420884004A10840042088C004A088C005A108C00420894004A089C006B18
        9C006B18A5007321A5007B21A5007B29A5005208AD007321AD007B29AD008431
        AD005200B5005A08B5006308B5005A10B5006B10B5007310B5008429B5007331
        B5007B39B5008C39B5005A08BD006B10BD007310BD007318BD007B18BD008418
        BD008421BD008C21BD009421BD008C29BD009429BD007B31BD008C39BD009439
        BD008C29C6009C29C600A529C6009C31C600A531C6008439C6008C39C600A539
        C600AD39C6008442C6009442C600A542C600A542CE00B542CE00A54ACE00AD4A
        CE009C52CE00B552CE00AD5ACE00B55ACE009C63CE00A563CE00AD63CE00BD5A
        D600B56BD600BD6BD600C673D600A57BD600C67BD600C673DE00CE84DE00D684
        DE00B58CDE00CE8CDE00BD94DE00C69CEF00D69CEF00C6A5EF00D6A5EF00C6AD
        EF00CEADEF00DEB5EF00E7B5EF00D6BDEF00E7BDEF00DEADF700EFC6F700EFCE
        F700FF00FF00EFD6FF00F7DEFF00EFE7FF00F7E7FF00F7EFFF00FFEFFF00FFF7
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00626262626262
        6262000001030301000062626262626262626262626262620000030A0F101010
        0C040100626262626262626262626204020C16241B1B1B1B241B0F0501626262
        6262626262620505161B1B1B1B1B1B1B1B1B1B1B0A0162626262626262060925
        1D1B1B1B1A1A1B1B1B1B1B1B240A016262626262030929271E1D1B161B1B1B1B
        1B1B1B1B1B240A016262626203292A28271E161B1B4D6767591D1B1B1B1B1B04
        626262050E322A291F1C1D1B1B526A6A6A5A1D1B1B1B240F016262052D332B29
        1E1C1B1B1B1D576A6A6A571D1B1B1B1B0362050B36332E291D1B1B1B1B1B1B54
        6A6A6A571D1B1B24080105113A352E3E3C37383B3737372F5D6A6A6A551B1B24
        0C0108143F3639666969696969696969676A6A6A6A521B240F010A19493A396A
        6A6A6A6A6A6A6A6A6A6A6A6A6A671B1B10040A194F43395E6666666666666563
        656A6A6A69461C240F010C18504C393A3D3D3D3D3D392B3E616A6A6847291E24
        0C0162125056433339393939393644646A6A664429281D2407626212485E533D
        33363939394C686A6A664228281E1E1C03626262205F5E4E39333639395B6A6A
        64402A29281F260D6262626222485E5E4C3D3336394B66613D2C2B2A29292703
        626262626217506161534436363D39353533332D2A2A09626262626262621750
        61645C534B43414143433D39330B626262626262626262214A5F61615E5F5856
        534C43310B626262626262626262626221204B565F5F58534C41150962626262
        62626262626262626262212030303123130B6262626262626262}
      OnClick = SpeedButton5Click
      ExplicitLeft = 411
    end
  end
  object DBEdit2: TDBEdit
    Left = 31
    Top = 62
    Width = 277
    Height = 21
    CharCase = ecUpperCase
    Color = clInfoBk
    DataField = 'NOME_MODALIDADE'
    DataSource = dsModalidades
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object DBEdit3: TDBEdit
    Left = 314
    Top = 62
    Width = 105
    Height = 21
    CharCase = ecUpperCase
    Color = clInfoBk
    DataField = 'VALOR'
    DataSource = dsModalidades
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 0
    Top = 118
    Width = 448
    Height = 17
    Align = alBottom
    Alignment = taLeftJustify
    Caption = '  Opera'#231#245'es'
    TabOrder = 4
  end
  object DBNavigator1: TDBNavigator
    Left = 304
    Top = 95
    Width = 136
    Height = 18
    DataSource = dsModalidades
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Flat = True
    Hints.Strings = (
      '')
    TabOrder = 5
  end
  object dsModalidades: TDataSource
    DataSet = DM.qModalidades
    OnStateChange = dsModalidadesStateChange
    Left = 248
    Top = 8
  end
end
