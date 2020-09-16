object FRM_Backup: TFRM_Backup
  Left = 222
  Top = 105
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Backup'
  ClientHeight = 451
  ClientWidth = 520
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 505
    Height = 385
    ActivePage = TabSheet1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Manuten'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      object Bevel1: TBevel
        Left = 0
        Top = 0
        Width = 497
        Height = 200
        Align = alClient
        Shape = bsFrame
      end
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 50
        Height = 13
        Caption = 'Database:'
      end
      object Label2: TLabel
        Left = 8
        Top = 48
        Width = 234
        Height = 13
        Caption = 'Destino (ex : C:\Meus Documentos\Backup.gbk):'
      end
      object Label3: TLabel
        Left = 176
        Top = 8
        Width = 66
        Height = 13
        Caption = 'Server Name:'
      end
      object Bevel2: TBevel
        Left = 8
        Top = 128
        Width = 481
        Height = 65
      end
      object Edit1: TEdit
        Left = 8
        Top = 24
        Width = 161
        Height = 21
        Enabled = False
        TabOrder = 0
        Text = 'C:\SisAcademia\BancodeDados'
      end
      object Edit2: TEdit
        Left = 8
        Top = 64
        Width = 281
        Height = 21
        Enabled = False
        TabOrder = 2
        Text = 'C:\SisAcademia\Backup\Backup.gbk'
      end
      object BitBtn1: TBitBtn
        Left = 8
        Top = 88
        Width = 75
        Height = 25
        Caption = 'Localizar ...'
        DoubleBuffered = True
        Enabled = False
        ParentDoubleBuffered = False
        TabOrder = 3
        OnClick = BitBtn1Click
      end
      object Memo1: TMemo
        Left = 0
        Top = 200
        Width = 497
        Height = 157
        Align = alBottom
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 4
      end
      object GroupBox1: TGroupBox
        Left = 304
        Top = 8
        Width = 185
        Height = 105
        Caption = '[ Op'#231#245'es ]'
        TabOrder = 5
        Visible = False
        object CheckBox1: TCheckBox
          Left = 16
          Top = 16
          Width = 129
          Height = 17
          Caption = 'Non Transportable'
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = CheckBox1Click
        end
        object CheckBox2: TCheckBox
          Left = 16
          Top = 32
          Width = 97
          Height = 17
          Caption = 'Ignore Limbo'
          Enabled = False
          TabOrder = 1
          OnClick = CheckBox2Click
        end
        object CheckBox3: TCheckBox
          Left = 16
          Top = 48
          Width = 97
          Height = 17
          Caption = 'Metadata Only'
          Enabled = False
          TabOrder = 2
          OnClick = CheckBox3Click
        end
        object CheckBox4: TCheckBox
          Left = 16
          Top = 64
          Width = 129
          Height = 17
          Caption = 'No Garbage Collection'
          Enabled = False
          TabOrder = 3
          OnClick = CheckBox4Click
        end
        object CheckBox5: TCheckBox
          Left = 16
          Top = 80
          Width = 129
          Height = 17
          Caption = 'Ignore CheckSums'
          Enabled = False
          TabOrder = 4
          OnClick = CheckBox5Click
        end
      end
      object BitBtn2: TBitBtn
        Left = 85
        Top = 88
        Width = 75
        Height = 25
        Caption = 'Iniciar'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 6
        OnClick = BitBtn2Click
      end
      object Animate1: TAnimate
        Left = 15
        Top = 134
        Width = 469
        Height = 56
        StopFrame = 34
      end
      object Edit3: TEdit
        Left = 176
        Top = 24
        Width = 113
        Height = 21
        TabOrder = 1
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Ajuda'
      ImageIndex = 1
      object RichEdit1: TRichEdit
        Left = 0
        Top = 0
        Width = 497
        Height = 357
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Lines.Strings = (
          'Non-Transportable'
          
            'Esta op'#231#227'o informa ao InterBase que o arquivo de backup deve ser' +
            ' gerado em um formato gen'#233'rico '
          
            'que possa ser restaurado em qualquer uma das plataformas suporta' +
            'das pelo InterBase.'
          ''
          'Ignore Limbo'
          
            'Com esta op'#231#227'o ativa o InterBase gera um arquivo de backup que c' +
            'ontenha somente as transa'#231#245'es '
          
            'que tenham sido commited. Quando acontece algum problema como qu' +
            'eda de servidor e algumas '
          
            'transa'#231#245'es ainda est'#227'o abertas, estas transa'#231#245'es v'#227'o pra limbo o' +
            'nde podem ser recuperadas em '
          'uma '
          
            'pr'#243'xima conex'#227'o desde que n'#227'o estejam corrompidas. Quando voc'#234' r' +
            'ealiza um backup com a '
          'configura'#231#227'o Ignore Limbo tais transa'#231#245'es s'#227'o descartadas.'
          ''
          'Metadata Only'
          
            'Salva somente os metadados e n'#227'o os dados, '#233' p'#233'rfeito para quand' +
            'o voc'#234' precisar de um c'#243'ipa '
          'vazia '
          'do banco.'
          ''
          'No Garbage Collection'
          
            'Quando esta op'#231#227'o n'#227'o estiver marcada, o InterBase executer'#225' um ' +
            'backup o mesmo processo feito '
          
            'pelo sweep para remover registros com vers'#245'es desatualizadas (ve' +
            'rificar processo de sweep). Se '
          'esta '
          
            'op'#231#227'o estiver marcada o InterBase ignorar'#225' ent'#227'o tal verifica'#231#227'o' +
            ', isto far'#225' com que o backup seja '
          'realizado em um menor espa'#231'o de tempo.'
          ''
          'Ignore Checksums'
          
            'Com esta op'#231#227'o marcada o InterBase n'#227'o interromper'#225' o backup cas' +
            'o o banco envolvido esteja '
          'corrompido.'
          ''
          'Restaura'#231#227'o'
          
            'O processo de restaura'#231#227'o deve ser de conhecimento da empresa pa' +
            'ra evitar error advindo da m'#225' '
          'execu'#231#227'o do processo.')
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 402
    Width = 520
    Height = 17
    Align = alBottom
    Alignment = taLeftJustify
    Caption = '  Opera'#231#245'es'
    TabOrder = 1
    ExplicitTop = 391
    ExplicitWidth = 511
  end
  object Panel2: TPanel
    Left = 0
    Top = 419
    Width = 520
    Height = 32
    Align = alBottom
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    ExplicitTop = 408
    ExplicitWidth = 511
    object SpeedButton1: TSpeedButton
      Left = 427
      Top = 1
      Width = 92
      Height = 30
      Align = alRight
      Caption = 'Fechar'
      Flat = True
      Font.Charset = ANSI_CHARSET
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
      ExplicitLeft = 425
      ExplicitTop = 6
    end
  end
  object IBBackupService1: TIBBackupService
    TraceFlags = []
    BlockingFactor = 0
    Options = []
    Left = 272
    Top = 65528
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.GDB'
    Filter = 'Database files (*.GDB)|*.GDB'
    Left = 352
    Top = 65528
  end
end
