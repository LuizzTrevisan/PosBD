object Form36: TForm36
  Left = 0
  Top = 0
  Caption = 'Form36'
  ClientHeight = 640
  ClientWidth = 1041
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBChart1: TDBChart
    Left = 0
    Top = 49
    Width = 1041
    Height = 591
    Title.Text.Strings = (
      'TDBChart')
    ClipPoints = False
    View3D = False
    View3DOptions.HorizOffset = -234
    View3DOptions.Zoom = 386
    Align = alClient
    TabOrder = 0
    ExplicitTop = 44
    DefaultCanvas = 'TGDIPlusCanvas'
    PrintMargins = (
      15
      -39
      15
      -39)
    ColorPaletteIndex = 13
    object Series1: TPointSeries
      DataSource = cdsIris
      Title = 'iris data'
      ClickableLine = False
      Pointer.Draw3D = False
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'petala'
      YValues.Name = 'Y'
      YValues.Order = loNone
      YValues.ValueSource = 'sepala'
    end
    object Series2: TPointSeries
      ColorEachPoint = True
      DataSource = cdsKs
      Title = 'Ks'
      ClickableLine = False
      Pointer.HorizSize = 20
      Pointer.InflateMargins = True
      Pointer.Style = psCircle
      Pointer.Transparency = 45
      Pointer.VertSize = 20
      XValues.Name = 'X'
      XValues.Order = loNone
      XValues.ValueSource = 'x'
      YValues.Name = 'Y'
      YValues.Order = loAscending
      YValues.ValueSource = 'y'
    end
    object Series4: TPointSeries
      DataSource = cdsGrupo1
      SeriesColor = 33023
      Title = 'grupo1'
      ClickableLine = False
      Pointer.Draw3D = False
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'petala'
      YValues.Name = 'Y'
      YValues.Order = loNone
      YValues.ValueSource = 'sepala'
    end
    object Series3: TPointSeries
      Active = False
      DataSource = Series4
      SeriesColor = 33023
      Title = 'centro grupo 1'
      ClickableLine = False
      Pointer.HorizSize = 6
      Pointer.InflateMargins = True
      Pointer.Pen.Visible = False
      Pointer.Style = psDonut
      Pointer.VertSize = 6
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
      object TeeFunction1: TAverageTeeFunction
        CalcByValue = False
      end
    end
    object Series5: TPointSeries
      DataSource = cdsGrupo2
      SeriesColor = 8388672
      Title = 'grupo2'
      ClickableLine = False
      Pointer.Draw3D = False
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'petala'
      YValues.Name = 'Y'
      YValues.Order = loNone
      YValues.ValueSource = 'sepala'
    end
    object Series7: TPointSeries
      Active = False
      DataSource = Series5
      SeriesColor = 8388672
      Title = 'centro grupo 2'
      ClickableLine = False
      Pointer.HorizSize = 6
      Pointer.InflateMargins = True
      Pointer.Pen.Visible = False
      Pointer.Style = psDonut
      Pointer.VertSize = 6
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
      object TeeFunction2: TAverageTeeFunction
        CalcByValue = False
      end
    end
    object Series6: TPointSeries
      DataSource = cdsGrupo3
      SeriesColor = clLime
      Title = 'grupo3'
      ClickableLine = False
      Pointer.Draw3D = False
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'petala'
      YValues.Name = 'Y'
      YValues.Order = loNone
      YValues.ValueSource = 'sepala'
    end
    object Series8: TPointSeries
      Active = False
      DataSource = Series6
      SeriesColor = clLime
      Title = 'centro grupo 3'
      ClickableLine = False
      Pointer.HorizSize = 6
      Pointer.InflateMargins = True
      Pointer.Pen.Visible = False
      Pointer.Style = psDonut
      Pointer.VertSize = 6
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
      object TeeFunction3: TAverageTeeFunction
        CalcByValue = False
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1041
    Height = 49
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 1
    object Button1: TButton
      Left = 168
      Top = 10
      Width = 129
      Height = 25
      Caption = 'Proxima Intera'#231#227'o'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 8
      Top = 10
      Width = 129
      Height = 25
      Caption = 'Random Inicio'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object cdsIris: TClientDataSet
    PersistDataPacket.Data = {
      470000009619E0BD010000001800000003000000000003000000470006706574
      616C61080004000000000006736570616C6108000400000000000663656E7472
      6F04000100000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'petala'
        DataType = ftFloat
      end
      item
        Name = 'sepala'
        DataType = ftFloat
      end
      item
        Name = 'centro'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 224
    Top = 224
    object cdsIrispetala: TFloatField
      FieldName = 'petala'
    end
    object cdsIrissepala: TFloatField
      FieldName = 'sepala'
    end
  end
  object cdsKs: TClientDataSet
    PersistDataPacket.Data = {
      2E0000009619E0BD0100000018000000020000000000030000002E0001780800
      040000000000017908000400000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'x'
        DataType = ftFloat
      end
      item
        Name = 'y'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 224
    Top = 288
    object cdsKsx: TFloatField
      FieldName = 'x'
    end
    object cdsKsy: TFloatField
      FieldName = 'y'
    end
  end
  object cdsGrupo1: TClientDataSet
    PersistDataPacket.Data = {
      620000009619E0BD010000001800000004000000000003000000620006706574
      616C61080004000000000006736570616C6108000400000000000C63656E7472
      6F506574616C6108000400000000000C63656E74726F536570616C6108000400
      000000000000}
    Active = True
    Aggregates = <
      item
        Active = True
        AggregateName = 'centroPetala'
        Expression = 'avg(petala)'
        Visible = False
      end
      item
        Active = True
        AggregateName = 'centroSepala'
        Expression = 'avg(sepala)'
        Visible = False
      end>
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'petala'
        DataType = ftFloat
      end
      item
        Name = 'sepala'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 280
    Top = 448
    object FloatField1: TFloatField
      FieldName = 'petala'
    end
    object FloatField2: TFloatField
      FieldName = 'sepala'
    end
  end
  object cdsGrupo2: TClientDataSet
    PersistDataPacket.Data = {
      620000009619E0BD010000001800000004000000000003000000620006706574
      616C61080004000000000006736570616C6108000400000000000C63656E7472
      6F506574616C6108000400000000000C63656E74726F536570616C6108000400
      000000000000}
    Active = True
    Aggregates = <
      item
        Active = True
        AggregateName = 'centroPetala'
        Expression = 'avg(Petala)'
      end
      item
        Active = True
        AggregateName = 'centroSepala'
        Expression = 'avg(sepala)'
        Visible = False
      end>
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'petala'
        DataType = ftFloat
      end
      item
        Name = 'sepala'
        DataType = ftFloat
      end
      item
        Name = 'centroPetala'
        DataType = ftFloat
      end
      item
        Name = 'centroSepala'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 360
    Top = 448
    object FloatField3: TFloatField
      FieldName = 'petala'
    end
    object FloatField4: TFloatField
      FieldName = 'sepala'
    end
  end
  object cdsGrupo3: TClientDataSet
    PersistDataPacket.Data = {
      620000009619E0BD010000001800000004000000000003000000620006706574
      616C61080004000000000006736570616C6108000400000000000C63656E7472
      6F506574616C6108000400000000000C63656E74726F536570616C6108000400
      000000000000}
    Active = True
    Aggregates = <
      item
        Active = True
        AggregateName = 'centroPetala'
        Expression = 'avg(Petala)'
        Visible = False
      end
      item
        Active = True
        AggregateName = 'centroSepala'
        Expression = 'avg(sepala)'
        Visible = False
      end>
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'petala'
        DataType = ftFloat
      end
      item
        Name = 'sepala'
        DataType = ftFloat
      end
      item
        Name = 'centroPetala'
        DataType = ftFloat
      end
      item
        Name = 'centroSepala'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 440
    Top = 456
    object FloatField5: TFloatField
      FieldName = 'petala'
    end
    object FloatField6: TFloatField
      FieldName = 'sepala'
    end
  end
end
