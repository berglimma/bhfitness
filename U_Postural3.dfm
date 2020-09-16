object FRM_CapturaPostural3: TFRM_CapturaPostural3
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'FRM_CapturaPostural3'
  ClientHeight = 349
  ClientWidth = 345
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 5
    Top = 3
    Width = 337
    Height = 278
    Caption = '  Imagem da WebCam  '
    TabOrder = 0
    object VideoCap1: TVideoCap
      Left = 2
      Top = 15
      Width = 333
      Height = 261
      align = alClient
      color = clWhite
      DriverOpen = False
      DriverIndex = 0
      DriverName = #26957#29283#29551#26223#8308#17495#8269#27977#26465#8293#24899#29808#29301#8293#22312#28265#12851')'
      VideoOverlay = False
      VideoPreview = False
      PreviewScaleToWindow = False
      PreviewScaleProportional = False
      PreviewRate = 30
      MicroSecPerFrame = 66667
      FrameRate = 15
      CapAudio = False
      VideoFileName = 'Video.avi'
      SingleImageFile = 'Foto.jpg'
      CapTimeLimit = 0
      CapIndexSize = 0
      CapToFile = False
      BufferFileSize = 0
    end
  end
  object cbx_preview: TCheckBox
    Left = 6
    Top = 286
    Width = 153
    Height = 13
    Caption = 'Ao Vivo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = cbx_previewClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 323
    Width = 345
    Height = 26
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 318
    object SpeedButton4: TSpeedButton
      Left = 1
      Top = 1
      Width = 104
      Height = 24
      Align = alLeft
      Caption = 'Capturar Imagem'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton4Click
    end
    object SpeedButton5: TSpeedButton
      Left = 105
      Top = 1
      Width = 104
      Height = 24
      Align = alLeft
      Caption = 'Gravar Foto'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton5Click
    end
    object SpeedButton6: TSpeedButton
      Left = 265
      Top = 1
      Width = 79
      Height = 24
      Align = alRight
      Caption = 'Fechar'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton6Click
      ExplicitLeft = 368
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 307
    Width = 345
    Height = 16
    Align = alBottom
    Alignment = taLeftJustify
    Caption = '  Opera'#231#245'es '
    TabOrder = 3
    ExplicitTop = 302
  end
  object EditSPict: TEdit
    Left = 182
    Top = 285
    Width = 160
    Height = 21
    TabOrder = 4
    Text = 'C:\SisAcademia\imagens\Postural3.jpg'
    Visible = False
  end
  object OpenPictureDialog1: TOpenPictureDialog
    FileName = 'C:\SisAcademia\imagens'
    Left = 304
    Top = 8
  end
end
