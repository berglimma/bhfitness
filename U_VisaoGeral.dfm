object FRM_VisaoGeral: TFRM_VisaoGeral
  Left = 306
  Top = 58
  BorderStyle = bsDialog
  Caption = '  Vis'#227'o Geral'
  ClientHeight = 573
  ClientWidth = 587
  Color = clWhite
  TransparentColor = True
  TransparentColorValue = clSkyBlue
  UseDockManager = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clNavy
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 495
    Top = 540
    Width = 84
    Height = 27
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
    OnClick = SpeedButton1Click
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 571
    Height = 526
    ActivePage = ts1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object ts1: TTabSheet
      Caption = 'Vis'#227'o Geral'
      object Label1: TLabel
        Left = 236
        Top = 69
        Width = 128
        Height = 13
        Caption = 'Data do '#218'ltimo Backup'
      end
      object Label2: TLabel
        Left = 236
        Top = 106
        Width = 129
        Height = 13
        Caption = 'Pacientes Cadastrados'
      end
      object Label3: TLabel
        Left = 413
        Top = 106
        Width = 90
        Height = 13
        Caption = 'Aniversariantes'
      end
      object Label4: TLabel
        Left = 0
        Top = 177
        Width = 563
        Height = 13
        Align = alBottom
        Caption = 'Pend'#234'ncias'
        ExplicitWidth = 64
      end
      object DBText1: TDBText
        Left = 199
        Top = 32
        Width = 361
        Height = 17
        Alignment = taCenter
        DataField = 'NOME'
        DataSource = DM.dsAcademia
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBImage1: TDBImage
        Left = 0
        Top = 1
        Width = 234
        Height = 168
        BorderStyle = bsNone
        Center = False
        Ctl3D = True
        DataField = 'LOGO'
        DataSource = DM.dsAcademia
        ParentCtl3D = False
        QuickDraw = False
        Stretch = True
        TabOrder = 0
      end
      object edUltimoBackup: TEdit
        Left = 368
        Top = 69
        Width = 101
        Height = 13
        Alignment = taCenter
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        Text = 'edUltimoBackup'
      end
      object edAlunosAtivos: TEdit
        Left = 240
        Top = 125
        Width = 124
        Height = 13
        Alignment = taCenter
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object edAniversariantes: TEdit
        Left = 413
        Top = 125
        Width = 90
        Height = 13
        Alignment = taCenter
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 190
        Width = 563
        Height = 308
        ActivePage = TabSheet1
        Align = alBottom
        TabOrder = 4
        object TabSheet1: TTabSheet
          Caption = '  Contas a Receber '
          object DBGrid2: TDBGrid
            Left = 0
            Top = 0
            Width = 555
            Height = 280
            Align = alClient
            Color = clInfoBk
            Ctl3D = True
            DataSource = dsVisaoGeral
            FixedColor = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clNavy
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            OnDrawColumnCell = DBGrid2DrawColumnCell
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CODIGO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -9
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'digo'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'NOME'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -9
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Title.Alignment = taCenter
                Title.Caption = 'Alunos'
                Width = 226
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'DATA_VENCIMENTO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -9
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Title.Alignment = taCenter
                Title.Caption = 'Data Vencimento'
                Width = 110
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'PARCELA'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -9
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Title.Alignment = taCenter
                Title.Caption = 'Parcela'
                Width = 50
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'SITUACAO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -9
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Title.Alignment = taCenter
                Title.Caption = 'Situa'#231#227'o'
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'VALOR_REC_PAGAR'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -9
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Title.Alignment = taCenter
                Title.Caption = 'Valor'
                Width = 50
                Visible = True
              end>
          end
        end
        object TabSheet2: TTabSheet
          Caption = '  Contas a Pagar '
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object DBGrid1: TDBGrid
            Left = 0
            Top = 0
            Width = 555
            Height = 280
            Align = alClient
            Color = clInfoBk
            DataSource = DM.dsContasPagarVisaoGeral
            FixedColor = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clNavy
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            OnDrawColumnCell = DBGrid1DrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'NOME'
                Title.Alignment = taCenter
                Title.Caption = 'Fornecedor'
                Width = 170
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CONTA_HISTORICO'
                Title.Alignment = taCenter
                Title.Caption = 'Hist'#243'rico'
                Width = 210
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_VENCIMENTO'
                Title.Alignment = taCenter
                Title.Caption = 'Vencimento'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR_DESP_PAGAR'
                Title.Alignment = taCenter
                Title.Caption = 'Valor'
                Width = 60
                Visible = True
              end>
          end
        end
      end
    end
  end
  object dsVisaoGeral: TDataSource
    DataSet = DM.qContasReceberVisaoGeral
    Left = 232
  end
end
