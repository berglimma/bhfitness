object FRM_CadUsuarios: TFRM_CadUsuarios
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 215
  ClientWidth = 409
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 184
    Width = 409
    Height = 31
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 181
    ExplicitWidth = 405
    object SpeedButton1: TSpeedButton
      Left = 325
      Top = 1
      Width = 83
      Height = 29
      Align = alRight
      Caption = 'Fechar'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
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
      ParentFont = False
      OnClick = SpeedButton1Click
      ExplicitLeft = 344
      ExplicitHeight = 32
    end
    object SpeedButton2: TSpeedButton
      Left = 65
      Top = 1
      Width = 72
      Height = 29
      Align = alLeft
      Caption = 'Gravar'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
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
      ParentFont = False
      OnClick = SpeedButton2Click
      ExplicitLeft = 1
      ExplicitHeight = 32
    end
    object SpeedButton6: TSpeedButton
      Left = 1
      Top = 1
      Width = 64
      Height = 29
      Align = alLeft
      Caption = 'Novo'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
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
      ParentFont = False
      OnClick = SpeedButton6Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 168
    Width = 409
    Height = 16
    Align = alBottom
    Alignment = taLeftJustify
    Caption = '  Opera'#231#245'es '
    TabOrder = 1
    ExplicitTop = 165
    ExplicitWidth = 405
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 9
    Width = 393
    Height = 150
    ActivePage = TabSheet1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = ' Cadastro de Usu'#225'rios '
      object Label1: TLabel
        Left = 76
        Top = 3
        Width = 89
        Height = 13
        Caption = 'Nome Completo'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 76
        Top = 41
        Width = 43
        Height = 13
        Caption = 'Usu'#225'rio'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 76
        Top = 76
        Width = 35
        Height = 13
        Caption = 'Senha'
        FocusControl = DBEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Image1: TImage
        Left = 8
        Top = 8
        Width = 48
        Height = 48
        AutoSize = True
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000300000
          003008060000005702F9870000000467414D410000AFC837058AE90000001974
          455874536F6674776172650041646F626520496D616765526561647971C9653C
          000009414944415478DAED99095054F71DC7BF6FDF2E7B700921A22C1EA074F0
          82E0D5D8AA89B651AB824954A2C4498C4D8DD1413AA389D8546BD02D09309A4E
          AA55D3AA238D36D4B3F14A8C47BD262AAC358CD1A062E42A022E2EBBECEEDB77
          F5FFDE5B761782E85436924EFF333BEFE03FFFFD7DFEBFEFEFF8B394288AF821
          0FEA7F0680A2A80E27BE3B05A38334D454955A3585A2A908A79D3306E9688B8A
          86451050C23AF84F580D8EAEDE0F7BA08DF6DFF40702E44C465A909EFE202EC9
          183D62F2485D4C424F959AE641C30DF02EB04E371AEFDC43E9D93247C9890AB8
          59F1F74D5A716D7E119C8F1560C53484046BE84FE386C4FE38352B5DAF0FD301
          9C4B361A3CA3DC0B0A847CE518386D0E5C3A53C39E3A5C6975BB84F1BF3B88D2
          C702B0FA1788531B54C79F5F9C1A9B3876A81AA2E031DC251B0AC1055B8305A1
          E11AE55902E2DD9E2B8B8A9B8DF8FBD6DB2E8795CF5879087BBF570069E70D6A
          FAF2BCBC5FC6758F379297A26C98B3D182737B4EA1ACF836EA6B1CDE05824369
          F41F108E91E362D03356E7F10691559D03DB375533360B3F79C5611CFFDE0072
          67D087A62E9AFCDCE06787ABE5176467AF9D35E3C2C11277B3CDC98686EB8387
          4F4A419F417DA00FD192D538B86C76545EAD84B5F2369253B4D0D01C81605153
          E140E196061BD72CF6FDED1158020E40A4333E2E25E6C0CBA637F4CA4C1E17F6
          1CE38FEFFCB2DCEDE2D78914DC3A9D6A6A90563D617E418621389C4CE339791E
          0456BE3656572384FD161A1527CBE952B14B38FA997DD7B2DDC24B0107786F3A
          7D65D1E6AC812191E1D234949D3363EFDA83D7426BF9E44567A5B4A38C35D3A8
          FC84A7A217A62F4D354024860BBCEC09089C7C2F36D7816ABC21C3312E061BD7
          DB196B93F82312D4150103C8994A0DE9951875FEB5824C79F75DD64614E5EE60
          6E97D62D2081B8CD7F0112273D82D5AAF2655B5FD1CB46B7784006F1C0D45F05
          1C1619A2B89817BE38E6CA5FBE0FD9010320BBFA9B194BD2DE4D1C3B4C2D1970
          7AC761949EBCEAACAF6D7E71D5011CF15FE0AD74E8C39CB02DDF369BA629C103
          E001913E92AC5C8D0A04C7A1A69A4761115F9EBD4BE817308082D99A630BD62F
          1E1F12112A679D2D4B37CA73EBAB6C7FCCDECD2FF65F402A6E51467DE19BEFA7
          8529D2E1BDF2F17A40BAAF3103AC8B3C0AC8FF90E7426A11EC2FC54E06082ACD
          DAFAD6608D469453E1FB191F60FCEC1138BEF3A29BE385B7E1140BA54C2219AF
          D15285E959A3C2E287F4F40B623F0FB480D45D019A9BC8B380CD1FC3555F250E
          216BDC080840FE4B9ACAA51FBF1D4B91A0E4996698666D40E68719A45570E1C8
          D613CD9537EEA97956D446466B9B2666A4842524C7B4DE6DB10544F0C1349401
          7622255EC4DFF653AEB29BE2C8CEA8CEED7B2023E8EBAC8F320768D4BC5C5D73
          E76CC2F2BFBEE1318CF31925706D76DB73CFF3BE77F27C0272470A64A5B7DBBE
          8B6ABE55298E24F1F4754000D6CDD11EF955C1AB1343A4F680C4C0C6A53BB1A0
          2003DE34E9C9F3AD77BB0548F0BDF39750F557240678658336826B7223A233BA
          D57601725FA457CC58F2F35509C97D5412C0D1EDFFC4B009C9888C0EF5F3825F
          96696B6C5B093136A0F6A6BC36699BF0971D546DF65EB1E7A31A7F5F0052077A
          F71B1C75E3E577A668A4F6C17AE72E6E7F6341D298F8D646B7D57BCBBDFC77C1
          37A7F116D1BFB2D997AFA9C423C7C53F65EF1617050C40AAC479E974D9EBAB27
          2744446965195D3A791D29E306B609563F8D8B6DD3A7078AB1920CE42BBA396B
          819507446AC3688A2669940F18C0AAA9786ED0F0E84333163EAD96DB63D236D7
          553BD0BD4F549B42C5B72F21C9789E9C63EE90DDE705E51B0CC1A8AAD763CBA6
          062F4443B78E2148A6FAEF00A49137933E9D3A77D0E8C494EE725B2C92830B2F
          AAA1D6E97DBBDEAE84C8C74D747FB7CA673C4DD68C1F033455A0A6DC8A3F6F6A
          7C288847022067DFDE3ABDEAAB39BF4E0A8FE9A59721246F8844DF94863CABA4
          2E5BF0C148DA7713AD3B1A009BCDBB30279581BB408FFEDD8098A1E4E11BF024
          A59AD6581F08F14800F202A91869D0AA4E4C9F1B6FE89768F040B04A2A95AED2
          109476192C3985B16E4FF6F12C4CABC0067543F1997B88ED29A0572281E89142
          7AA32B048214C9DCE60E211E19401AE46C308CD65287C64E78B25B528A212834
          54940F295E08CE53D0784F10F39E45F5C44B7AA51D671C2CCC671B0984E88178
          8AA4D6CB04C201531E735F884E01F0C8299CD650051A1A19A3C686697AC7AA34
          4692C9D5748BE19CAC95DA3B022C569ABF784964D2663C618888A49438201263
          9C1CCC5FDA7D10D1C9A4C09590E3B513A602BE5D884E03681952FFAF61313F48
          47A5316E3125D840B1D1DD556EBB5DA0EBEA45834E4F5D7733621151CED0679E
          354CFCC918834A09F616081EE60B2E3F8824A0EA22F1840BA675E277203A1DA0
          ED58330991E4781927A850EF7FCA226978526437AA28332B3C54315EF0784250
          204A58C4921E5081180C549C971D69CA675B41041CA0A3F1DE0B289F96A68B4B
          4C547B3D5052CC09073FE755736753A8AE16FD2088271AAE92901261CA6978E8
          62175000E91F0341067C9AF9A6DEA0D70B5EE325E348BB22BE368BA8A7063E08
          29C53655124F1088EC1B0F0511500069E4BE80B51111D4FCE4C12AFDE7C7BCC6
          4BC6493D9738EF550D2ABFE5608C16D17B2081308E20B5A489A88D8629F3DC03
          21020E20433C8F22378B999231FEEB4BDF27412C7B278AA4580B8CDD05052276
          14A91FA48F145530CDDBD7619D903622E0001D0D929EC59579FDC0B855301F2B
          87F1495E81E843DA0E7DB4DCBA98666FBC2F44D70058370408D2836168980F16
          C3F804AB40F41D07440C5062627A6EBB105D036003918C9A546D4D28189700F3
          EECF608C742B10F13F0382FB9216CC463CB1F93B105D02A0EDBB49AF0C05FFEF
          AB3046383D727A06D045806F6E84E9F5FDAD201E3B40DB410A637F9EC6F5F979
          3371EBE83F0804A340F41E4D0C23B5D0D104D3A2535E88856744AF9CBA048034
          5ABCB2ECA374983FD9E79393949D889478A715A625A568C96A5D0E60FD4F21C9
          835B59380B4CD35D98F79C2081CDF9EA84BD16BC9DC86945552B882E03200D39
          B8B7A6CA3F5F31560BC94EFFF2A558A9625BCA9093DDD501368F577EB6E21CC4
          133698BF28F7153B729EC85970B28B03AC7F5AF9AD8D75CA208CCD0EF3E9066F
          DB91B3EA5E1707F8439272849500641002D1CCC07CDE01630F605B11BA384041
          8202C0399523AC74E626C758C64E4E7697451C3DD5C5011E665EBB003FD4F17F
          80C73DFE03C3C983FBF1D082470000000049454E44AE426082}
        Proportional = True
      end
      object DBEdit1: TDBEdit
        Left = 76
        Top = 18
        Width = 293
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOME_COMPLETO'
        DataSource = dsUsuarios
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 76
        Top = 55
        Width = 165
        Height = 21
        DataField = 'NOME'
        DataSource = dsUsuarios
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 76
        Top = 90
        Width = 165
        Height = 21
        DataField = 'SENHA'
        DataSource = dsUsuarios
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        PasswordChar = '*'
        TabOrder = 2
      end
    end
  end
  object dsUsuarios: TDataSource
    DataSet = DM.qUsuario
    Left = 320
    Top = 48
  end
end
