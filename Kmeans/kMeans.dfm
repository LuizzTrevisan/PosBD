object Form36: TForm36
  Left = 0
  Top = 0
  Caption = 'Form36'
  ClientHeight = 873
  ClientWidth = 1417
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  DesignSize = (
    1417
    873)
  PixelsPerInch = 96
  TextHeight = 13
  object DBChart1: TDBChart
    Left = 16
    Top = 55
    Width = 577
    Height = 786
    BackWall.Color = 15921906
    Title.Color = clNavy
    Title.Font.Color = clNavy
    Title.Font.Height = -13
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      '<i>Iris Data</i>')
    Title.TextFormat = ttfHtml
    Title.Visible = False
    BottomAxis.Title.Caption = 'P'#233'tala ( Largura * Altura )'
    BottomAxis.Title.Visible = False
    Chart3DPercent = 3
    ClipPoints = False
    LeftAxis.Title.Caption = 'S'#233'pala ( Largura * Altura )'
    LeftAxis.Title.Visible = False
    Legend.Visible = False
    View3D = False
    View3DOptions.Elevation = 20
    View3DOptions.Perspective = 2
    View3DWalls = False
    Color = 16514043
    TabOrder = 0
    DefaultCanvas = 'TGDIPlusCanvas'
    PrintMargins = (
      41
      15
      41
      15)
    ColorPaletteIndex = 16
    object Series1: TPointSeries
      Marks.Frame.Visible = False
      Marks.Style = smsXY
      Marks.Callout.Length = 20
      DataSource = cdsIris
      SeriesColor = clSilver
      Title = 'iris data'
      ClickableLine = False
      Pointer.Draw3D = False
      Pointer.HorizSize = 5
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.VertSize = 5
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
      Pointer.Draw3D = False
      Pointer.Emboss.Color = 6513507
      Pointer.Emboss.Smooth = False
      Pointer.Emboss.Transparency = 100
      Pointer.HorizSize = 8
      Pointer.InflateMargins = True
      Pointer.Shadow.Color = clWhite
      Pointer.Style = psCircle
      Pointer.VertSize = 8
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
      Pointer.HorizSize = 5
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.VertSize = 5
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'petala'
      YValues.Name = 'Y'
      YValues.Order = loNone
      YValues.ValueSource = 'sepala'
    end
    object Series9: TLineSeries
      Marks.Callout.Length = 0
      DataSource = cdsK1
      SeriesColor = 33023
      Title = 'Trajeto K1'
      Brush.BackColor = clDefault
      ClickableLine = False
      Pointer.HorizSize = 7
      Pointer.InflateMargins = True
      Pointer.Pen.Visible = False
      Pointer.Style = psDonut
      Pointer.VertSize = 7
      Pointer.Visible = True
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'x'
      YValues.Name = 'Y'
      YValues.Order = loNone
      YValues.ValueSource = 'y'
      object TeeFunction4: TAverageTeeFunction
        CalcByValue = False
      end
    end
    object Series5: TPointSeries
      DataSource = cdsGrupo2
      SeriesColor = 16744576
      Title = 'grupo2'
      ClickableLine = False
      Pointer.Draw3D = False
      Pointer.HorizSize = 5
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.VertSize = 5
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'petala'
      YValues.Name = 'Y'
      YValues.Order = loNone
      YValues.ValueSource = 'sepala'
    end
    object Series7: TLineSeries
      Marks.Callout.Length = 0
      DataSource = cdsK2
      SeriesColor = 16744576
      Title = 'Trajeto K2'
      Brush.BackColor = clDefault
      ClickableLine = False
      Pointer.HorizSize = 7
      Pointer.InflateMargins = True
      Pointer.Pen.Visible = False
      Pointer.Style = psDonut
      Pointer.VertSize = 7
      Pointer.Visible = True
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'x'
      YValues.Name = 'Y'
      YValues.Order = loNone
      YValues.ValueSource = 'y'
      object TeeFunction2: TAverageTeeFunction
        CalcByValue = False
      end
    end
    object Series6: TPointSeries
      DataSource = cdsGrupo3
      SeriesColor = 8453888
      Title = 'grupo3'
      ClickableLine = False
      Pointer.Draw3D = False
      Pointer.HorizSize = 5
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.VertSize = 5
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'petala'
      YValues.Name = 'Y'
      YValues.Order = loNone
      YValues.ValueSource = 'sepala'
    end
    object Series8: TLineSeries
      Marks.Callout.Length = 0
      DataSource = cdsK3
      SeriesColor = 8453888
      Title = 'Trajeto K3'
      Brush.BackColor = clDefault
      ClickableLine = False
      Pointer.HorizSize = 7
      Pointer.InflateMargins = True
      Pointer.Pen.Visible = False
      Pointer.Style = psDonut
      Pointer.VertSize = 7
      Pointer.Visible = True
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'x'
      YValues.Name = 'Y'
      YValues.Order = loNone
      YValues.ValueSource = 'y'
      object TeeFunction3: TAverageTeeFunction
        CalcByValue = False
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1417
    Height = 49
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 1444
    object Button1: TButton
      Left = 368
      Top = 12
      Width = 129
      Height = 29
      Caption = 'Agrupar Pr'#243'ximos'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 216
      Top = 3
      Width = 129
      Height = 29
      Caption = 'Random Inicio'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 503
      Top = 12
      Width = 129
      Height = 29
      Caption = 'Atualizar Centros Ks'
      TabOrder = 2
      OnClick = Button3Click
    end
    object RadioGroup1: TRadioGroup
      Left = 1
      Top = 1
      Width = 209
      Height = 47
      Align = alLeft
      Caption = 'RadioGroup1'
      Columns = 3
      ItemIndex = 1
      Items.Strings = (
        'M'#233'dia'
        'Mediana'
        'Met'#243'ide')
      TabOrder = 3
    end
    object Button4: TButton
      Left = 688
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Button4'
      TabOrder = 4
      OnClick = Button4Click
    end
    object CheckBox1: TCheckBox
      Left = 216
      Top = 32
      Width = 105
      Height = 13
      Caption = 'Pre Determinado'
      TabOrder = 5
    end
    object CheckBox2: TCheckBox
      Left = 368
      Top = 1
      Width = 105
      Height = 13
      Caption = ' nao zerar'
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
  end
  object Memo1: TMemo
    Left = 599
    Top = 80
    Width = 816
    Height = 761
    Anchors = [akLeft, akTop, akRight]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'Memo1')
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 599
    Top = 55
    Width = 700
    Height = 21
    TabOrder = 3
    Text = 'Edit1'
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
    Left = 227
    Top = 216
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
    Left = 432
    Top = 448
    object FloatField5: TFloatField
      FieldName = 'petala'
    end
    object FloatField6: TFloatField
      FieldName = 'sepala'
    end
  end
  object cdsK1: TClientDataSet
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
    Left = 464
    Top = 208
    object FloatField7: TFloatField
      FieldName = 'x'
    end
    object FloatField8: TFloatField
      FieldName = 'y'
    end
  end
  object cdsK2: TClientDataSet
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
    Left = 464
    Top = 256
    object FloatField9: TFloatField
      FieldName = 'x'
    end
    object FloatField10: TFloatField
      FieldName = 'y'
    end
  end
  object cdsK3: TClientDataSet
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
    Left = 464
    Top = 304
    object FloatField11: TFloatField
      FieldName = 'x'
    end
    object FloatField12: TFloatField
      FieldName = 'y'
    end
  end
  object TeeGDIPlus1: TTeeGDIPlus
    Active = True
    AntiAliasText = gpfBest
    TeePanel = DBChart1
    Left = 992
    Top = 72
  end
end
