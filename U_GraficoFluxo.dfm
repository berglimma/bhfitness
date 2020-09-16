object FRM_GraficoFluxo: TFRM_GraficoFluxo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Gr'#225'fico do Fluxo entre Receita e Despesa'
  ClientHeight = 586
  ClientWidth = 960
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
    Top = 553
    Width = 960
    Height = 33
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 557
  end
  object Panel2: TPanel
    Left = 0
    Top = 536
    Width = 960
    Height = 17
    Align = alBottom
    Alignment = taLeftJustify
    Caption = '   Opera'#231#245'es'
    TabOrder = 1
    ExplicitTop = 540
  end
  object dsFluxo: TDataSource
    DataSet = DM.qFluxo
    Left = 520
    Top = 16
  end
  object qFluxo: TIBQuery
    Database = DM.DataBase
    Transaction = DM.Transaction
    SQL.Strings = (
      
        'select VALOR_RECEITA, VALOR_DESPESA, DATA_RECEBIMENTO from MOVIM' +
        'ENTO where SITUACAO='#39'PAGO'#39)
    Left = 520
    Top = 64
    object qFluxoVALOR_RECEITA: TIBBCDField
      FieldName = 'VALOR_RECEITA'
      Origin = '"MOVIMENTO"."VALOR_RECEITA"'
      DisplayFormat = 'R$ #.##0.00'
      currency = True
      Precision = 18
      Size = 2
    end
    object qFluxoVALOR_DESPESA: TIBBCDField
      FieldName = 'VALOR_DESPESA'
      Origin = '"MOVIMENTO"."VALOR_DESPESA"'
      DisplayFormat = 'R$ #.##0.00'
      currency = True
      Precision = 18
      Size = 2
    end
    object qFluxoDATA_RECEBIMENTO: TDateField
      FieldName = 'DATA_RECEBIMENTO'
      Origin = '"MOVIMENTO"."DATA_RECEBIMENTO"'
    end
  end
end
