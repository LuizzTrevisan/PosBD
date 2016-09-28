unit kMeans;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, VclTee.TeEngine,
  VclTee.Series, Vcl.ExtCtrls, VclTee.TeeProcs, VclTee.Chart, Data.DB, Datasnap.DBClient,
  VclTee.DBChart, Vcl.StdCtrls, System.Math, VclTee.TeeFunci, VclTee.ArrowCha;

type
  TForm36 = class(TForm)
    cdsIris: TClientDataSet;
    cdsIrispetala: TFloatField;
    cdsIrissepala: TFloatField;
    DBChart1: TDBChart;
    Series1: TPointSeries;
    cdsKs: TClientDataSet;
    cdsKsx: TFloatField;
    cdsKsy: TFloatField;
    Panel1: TPanel;
    Button1: TButton;
    cdsGrupo1: TClientDataSet;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    Series4: TPointSeries;
    Series5: TPointSeries;
    Series6: TPointSeries;
    TeeFunction2: TAverageTeeFunction;
    TeeFunction3: TAverageTeeFunction;
    cdsGrupo2: TClientDataSet;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    cdsGrupo3: TClientDataSet;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    Button2: TButton;
    cdsK1: TClientDataSet;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    cdsK2: TClientDataSet;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    cdsK3: TClientDataSet;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    Series8: TLineSeries;
    Series7: TLineSeries;
    Series2: TPointSeries;
    Series9: TLineSeries;
    TeeFunction4: TAverageTeeFunction;
    TeeGDIPlus1: TTeeGDIPlus;
    Button3: TButton;
    RadioGroup1: TRadioGroup;
    Button4: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations } procedure Medoide(X, Y: Real; AFieldX, AFieldY: TField);
  public
    { Public declarations }
  end;

var
  Form36: TForm36;

implementation

{$R *.dfm}

procedure TForm36.Button1Click(Sender: TObject);
var
  vGrupoDistanciaMenor: Integer;
  vDistancia: Real;
  vDistanciaMenor: Real;
begin

  cdsGrupo1.EmptyDataSet;
  cdsGrupo2.EmptyDataSet;
  cdsGrupo3.EmptyDataSet;

  // sallvar o k antigo
  cdsKs.First;
  cdsK1.First;
  while (cdsK1.RecordCount >= 1) do
    cdsK1.Delete;
  cdsK1.AppendRecord([cdsKsx.AsFloat, cdsKsy.AsFloat]);

  cdsKs.Next;
  cdsK2.First;
  while (cdsK2.RecordCount >= 1) do
    cdsK2.Delete;
  cdsK2.AppendRecord([cdsKsx.AsFloat, cdsKsy.AsFloat]);

  cdsKs.Next;
  cdsK3.First;
  while (cdsK3.RecordCount >= 1) do
    cdsK3.Delete;
  cdsK3.AppendRecord([cdsKsx.AsFloat, cdsKsy.AsFloat]);

  cdsIris.First;
  while (not cdsIris.eof) do begin
    cdsKs.First;
    vDistanciaMenor := 9999999;
    while (not cdsKs.eof) do begin

      vDistancia := abs(cdsIrispetala.AsFloat - cdsKsx.AsFloat) +
        abs(cdsIrissepala.AsFloat - cdsKsy.AsFloat);

      if (vDistancia < vDistanciaMenor) then begin
        vDistanciaMenor := vDistancia;
        vGrupoDistanciaMenor := cdsKs.RecNo;
      end;

      cdsKs.Next;
    end;

    if (vGrupoDistanciaMenor = 1) then
      cdsGrupo1.AppendRecord([cdsIrispetala.AsFloat, cdsIrissepala.AsFloat])
    else if (vGrupoDistanciaMenor = 2) then
      cdsGrupo2.AppendRecord([cdsIrispetala.AsFloat, cdsIrissepala.AsFloat])
    else
      cdsGrupo3.AppendRecord([cdsIrispetala.AsFloat, cdsIrissepala.AsFloat]);

    cdsIris.Next;
  end;

  DBChart1.RefreshData;

end;

procedure TForm36.Button2Click(Sender: TObject);

begin

  cdsGrupo1.EmptyDataSet;
  cdsGrupo2.EmptyDataSet;
  cdsGrupo3.EmptyDataSet;

  cdsK1.EmptyDataSet;
  cdsK2.EmptyDataSet;
  cdsK3.EmptyDataSet;

  cdsKs.EmptyDataSet;

  cdsKs.AppendRecord([12.2123, 4.4649]);
  cdsKs.AppendRecord([15.7892, 2.1289]);
  cdsKs.AppendRecord([22.1203, 12.3298]);


  // cdsKs.AppendRecord([(RandomRange(430, 790) / 100) * (RandomRange(200, 440) / 100),
  // (RandomRange(100, 690) / 100) * (RandomRange(10, 250) / 100)]);
  // cdsKs.AppendRecord([(RandomRange(430, 790) / 100) * (RandomRange(200, 440) / 100),
  // (RandomRange(100, 690) / 100) * (RandomRange(10, 250) / 100)]);
  // cdsKs.AppendRecord([(RandomRange(430, 790) / 100) * (RandomRange(200, 440) / 100),
  // (RandomRange(100, 690) / 100) * (RandomRange(10, 250) / 100)]);

  /// achar o ponto mais proximo de cada um dos ks e mover o k para la
  if (RadioGroup1.ItemIndex = 2) then begin
    cdsKs.First;
    cdsKs.Edit;
    Medoide(cdsKsx.AsFloat, cdsKsy.AsFloat, cdsKsx, cdsKsy);

    cdsKs.Next;
    cdsKs.Edit;
    Medoide(cdsKsx.AsFloat, cdsKsy.AsFloat, cdsKsx, cdsKsy);

    cdsKs.Next;
    cdsKs.Edit;
    Medoide(cdsKsx.AsFloat, cdsKsy.AsFloat, cdsKsx, cdsKsy);
  end;

  DBChart1.RefreshData;
end;

procedure TForm36.Button3Click(Sender: TObject);
  procedure Mediana(ACds: TClientDataSet; AFieldX, AFieldY: TField);
  begin
    ACds.IndexFieldNames := 'petala';

    ACds.RecNo := ACds.RecordCount div 2;
    AFieldX.AsFloat := ACds.FieldByName('petala').AsFloat;
    if (ACds.RecordCount mod 2 = 0) then begin
      ACds.RecNo := ACds.RecNo + 1;
      AFieldX.AsFloat := (AFieldX.AsFloat + ACds.FieldByName('petala').AsFloat) / 2;
    end;

    ACds.IndexFieldNames := 'sepala';
    ACds.RecNo := ACds.RecordCount div 2;
    AFieldY.AsFloat := ACds.FieldByName('sepala').AsFloat;
    if (ACds.RecordCount mod 2 = 0) then begin
      ACds.RecNo := ACds.RecNo + 1;
      AFieldY.AsFloat := (AFieldY.AsFloat + ACds.FieldByName('sepala').AsFloat) / 2;
    end;

  end;

begin
  // média
  if (RadioGroup1.ItemIndex = 0) then begin

    cdsKs.First;
    cdsKs.Edit;
    cdsKsx.AsFloat := cdsGrupo1.Aggregates[0].Value;
    cdsKsy.AsFloat := cdsGrupo1.Aggregates[1].Value;
    cdsK1.AppendRecord([cdsKsx.AsFloat, cdsKsy.AsFloat]);

    cdsKs.Next;
    cdsKs.Edit;
    cdsKsx.AsFloat := cdsGrupo2.Aggregates[0].Value;
    cdsKsy.AsFloat := cdsGrupo2.Aggregates[1].Value;
    cdsK2.AppendRecord([cdsKsx.AsFloat, cdsKsy.AsFloat]);

    cdsKs.Next;
    cdsKs.Edit;
    cdsKsx.AsFloat := cdsGrupo3.Aggregates[0].Value;
    cdsKsy.AsFloat := cdsGrupo3.Aggregates[1].Value;
    cdsK3.AppendRecord([cdsKsx.AsFloat, cdsKsy.AsFloat]);

  end // mediana
  else if (RadioGroup1.ItemIndex = 1) then begin

    cdsKs.First;
    cdsKs.Edit;
    Mediana(cdsGrupo1, cdsKsx, cdsKsy);
    cdsK1.AppendRecord([cdsKsx.AsFloat, cdsKsy.AsFloat]);

    cdsKs.Next;
    cdsKs.Edit;
    Mediana(cdsGrupo2, cdsKsx, cdsKsy);
    cdsK2.AppendRecord([cdsKsx.AsFloat, cdsKsy.AsFloat]);

    cdsKs.Next;
    cdsKs.Edit;
    Mediana(cdsGrupo3, cdsKsx, cdsKsy);
    cdsK3.AppendRecord([cdsKsx.AsFloat, cdsKsy.AsFloat]);

  end
  else if (RadioGroup1.ItemIndex = 2) then begin
    // depois de achar a media, acha o medoide

    cdsKs.First;
    cdsKs.Edit;
    cdsKsx.AsFloat := cdsGrupo1.Aggregates[0].Value;
    cdsKsy.AsFloat := cdsGrupo1.Aggregates[1].Value;
    Medoide(cdsKsx.AsFloat, cdsKsy.AsFloat, cdsKsx, cdsKsy);
    cdsK1.AppendRecord([cdsKsx.AsFloat, cdsKsy.AsFloat]);

    cdsKs.Next;
    cdsKs.Edit;
    cdsKsx.AsFloat := cdsGrupo2.Aggregates[0].Value;
    cdsKsy.AsFloat := cdsGrupo2.Aggregates[1].Value;
    Medoide(cdsKsx.AsFloat, cdsKsy.AsFloat, cdsKsx, cdsKsy);
    cdsK2.AppendRecord([cdsKsx.AsFloat, cdsKsy.AsFloat]);

    cdsKs.Next;
    cdsKs.Edit;
    cdsKsx.AsFloat := cdsGrupo3.Aggregates[0].Value;
    cdsKsy.AsFloat := cdsGrupo3.Aggregates[1].Value;
    Medoide(cdsKsx.AsFloat, cdsKsy.AsFloat, cdsKsx, cdsKsy);
    cdsK3.AppendRecord([cdsKsx.AsFloat, cdsKsy.AsFloat]);

  end;

  DBChart1.RefreshData;
end;

procedure TForm36.Button4Click(Sender: TObject);
begin
  DBChart1.SaveToBitmapFile('D:\Luiz Pos\PosBD\t.jpeg');
end;

procedure TForm36.FormShow(Sender: TObject);
begin

  cdsIris.AppendRecord([5.1 * 3.5, 1.4 * 0.2]);
  cdsIris.AppendRecord([4.9 * 3.0, 1.4 * 0.2]);
  cdsIris.AppendRecord([4.7 * 3.2, 1.3 * 0.2]);
  cdsIris.AppendRecord([4.6 * 3.1, 1.5 * 0.2]);
  cdsIris.AppendRecord([5.0 * 3.6, 1.4 * 0.2]);
  cdsIris.AppendRecord([5.4 * 3.9, 1.7 * 0.4]);
  cdsIris.AppendRecord([4.6 * 3.4, 1.4 * 0.3]);
  cdsIris.AppendRecord([5.0 * 3.4, 1.5 * 0.2]);
  cdsIris.AppendRecord([4.4 * 2.9, 1.4 * 0.2]);
  cdsIris.AppendRecord([4.9 * 3.1, 1.5 * 0.1]);
  cdsIris.AppendRecord([5.4 * 3.7, 1.5 * 0.2]);
  cdsIris.AppendRecord([4.8 * 3.4, 1.6 * 0.2]);
  cdsIris.AppendRecord([4.8 * 3.0, 1.4 * 0.1]);
  cdsIris.AppendRecord([4.3 * 3.0, 1.1 * 0.1]);
  cdsIris.AppendRecord([5.8 * 4.0, 1.2 * 0.2]);
  cdsIris.AppendRecord([5.7 * 4.4, 1.5 * 0.4]);
  cdsIris.AppendRecord([5.4 * 3.9, 1.3 * 0.4]);
  cdsIris.AppendRecord([5.1 * 3.5, 1.4 * 0.3]);
  cdsIris.AppendRecord([5.7 * 3.8, 1.7 * 0.3]);
  cdsIris.AppendRecord([5.1 * 3.8, 1.5 * 0.3]);
  cdsIris.AppendRecord([5.4 * 3.4, 1.7 * 0.2]);
  cdsIris.AppendRecord([5.1 * 3.7, 1.5 * 0.4]);
  cdsIris.AppendRecord([4.6 * 3.6, 1.0 * 0.2]);
  cdsIris.AppendRecord([5.1 * 3.3, 1.7 * 0.5]);
  cdsIris.AppendRecord([4.8 * 3.4, 1.9 * 0.2]);
  cdsIris.AppendRecord([5.0 * 3.0, 1.6 * 0.2]);
  cdsIris.AppendRecord([5.0 * 3.4, 1.6 * 0.4]);
  cdsIris.AppendRecord([5.2 * 3.5, 1.5 * 0.2]);
  cdsIris.AppendRecord([5.2 * 3.4, 1.4 * 0.2]);
  cdsIris.AppendRecord([4.7 * 3.2, 1.6 * 0.2]);
  cdsIris.AppendRecord([4.8 * 3.1, 1.6 * 0.2]);
  cdsIris.AppendRecord([5.4 * 3.4, 1.5 * 0.4]);
  cdsIris.AppendRecord([5.2 * 4.1, 1.5 * 0.1]);
  cdsIris.AppendRecord([5.5 * 4.2, 1.4 * 0.2]);
  cdsIris.AppendRecord([4.9 * 3.1, 1.5 * 0.1]);
  cdsIris.AppendRecord([5.0 * 3.2, 1.2 * 0.2]);
  cdsIris.AppendRecord([5.5 * 3.5, 1.3 * 0.2]);
  cdsIris.AppendRecord([4.9 * 3.1, 1.5 * 0.1]);
  cdsIris.AppendRecord([4.4 * 3.0, 1.3 * 0.2]);
  cdsIris.AppendRecord([5.1 * 3.4, 1.5 * 0.2]);
  cdsIris.AppendRecord([5.0 * 3.5, 1.3 * 0.3]);
  cdsIris.AppendRecord([4.5 * 2.3, 1.3 * 0.3]);
  cdsIris.AppendRecord([4.4 * 3.2, 1.3 * 0.2]);
  cdsIris.AppendRecord([5.0 * 3.5, 1.6 * 0.6]);
  cdsIris.AppendRecord([5.1 * 3.8, 1.9 * 0.4]);
  cdsIris.AppendRecord([4.8 * 3.0, 1.4 * 0.3]);
  cdsIris.AppendRecord([5.1 * 3.8, 1.6 * 0.2]);
  cdsIris.AppendRecord([4.6 * 3.2, 1.4 * 0.2]);
  cdsIris.AppendRecord([5.3 * 3.7, 1.5 * 0.2]);
  cdsIris.AppendRecord([5.0 * 3.3, 1.4 * 0.2]);
  cdsIris.AppendRecord([7.0 * 3.2, 4.7 * 1.4]);
  cdsIris.AppendRecord([6.4 * 3.2, 4.5 * 1.5]);
  cdsIris.AppendRecord([6.9 * 3.1, 4.9 * 1.5]);
  cdsIris.AppendRecord([5.5 * 2.3, 4.0 * 1.3]);
  cdsIris.AppendRecord([6.5 * 2.8, 4.6 * 1.5]);
  cdsIris.AppendRecord([5.7 * 2.8, 4.5 * 1.3]);
  cdsIris.AppendRecord([6.3 * 3.3, 4.7 * 1.6]);
  cdsIris.AppendRecord([4.9 * 2.4, 3.3 * 1.0]);
  cdsIris.AppendRecord([6.6 * 2.9, 4.6 * 1.3]);
  cdsIris.AppendRecord([5.2 * 2.7, 3.9 * 1.4]);
  cdsIris.AppendRecord([5.0 * 2.0, 3.5 * 1.0]);
  cdsIris.AppendRecord([5.9 * 3.0, 4.2 * 1.5]);
  cdsIris.AppendRecord([6.0 * 2.2, 4.0 * 1.0]);
  cdsIris.AppendRecord([6.1 * 2.9, 4.7 * 1.4]);
  cdsIris.AppendRecord([5.6 * 2.9, 3.6 * 1.3]);
  cdsIris.AppendRecord([6.7 * 3.1, 4.4 * 1.4]);
  cdsIris.AppendRecord([5.6 * 3.0, 4.5 * 1.5]);
  cdsIris.AppendRecord([5.8 * 2.7, 4.1 * 1.0]);
  cdsIris.AppendRecord([6.2 * 2.2, 4.5 * 1.5]);
  cdsIris.AppendRecord([5.6 * 2.5, 3.9 * 1.1]);
  cdsIris.AppendRecord([5.9 * 3.2, 4.8 * 1.8]);
  cdsIris.AppendRecord([6.1 * 2.8, 4.0 * 1.3]);
  cdsIris.AppendRecord([6.3 * 2.5, 4.9 * 1.5]);
  cdsIris.AppendRecord([6.1 * 2.8, 4.7 * 1.2]);
  cdsIris.AppendRecord([6.4 * 2.9, 4.3 * 1.3]);
  cdsIris.AppendRecord([6.6 * 3.0, 4.4 * 1.4]);
  cdsIris.AppendRecord([6.8 * 2.8, 4.8 * 1.4]);
  cdsIris.AppendRecord([6.7 * 3.0, 5.0 * 1.7]);
  cdsIris.AppendRecord([6.0 * 2.9, 4.5 * 1.5]);
  cdsIris.AppendRecord([5.7 * 2.6, 3.5 * 1.0]);
  cdsIris.AppendRecord([5.5 * 2.4, 3.8 * 1.1]);
  cdsIris.AppendRecord([5.5 * 2.4, 3.7 * 1.0]);
  cdsIris.AppendRecord([5.8 * 2.7, 3.9 * 1.2]);
  cdsIris.AppendRecord([6.0 * 2.7, 5.1 * 1.6]);
  cdsIris.AppendRecord([5.4 * 3.0, 4.5 * 1.5]);
  cdsIris.AppendRecord([6.0 * 3.4, 4.5 * 1.6]);
  cdsIris.AppendRecord([6.7 * 3.1, 4.7 * 1.5]);
  cdsIris.AppendRecord([6.3 * 2.3, 4.4 * 1.3]);
  cdsIris.AppendRecord([5.6 * 3.0, 4.1 * 1.3]);
  cdsIris.AppendRecord([5.5 * 2.5, 4.0 * 1.3]);
  cdsIris.AppendRecord([5.5 * 2.6, 4.4 * 1.2]);
  cdsIris.AppendRecord([6.1 * 3.0, 4.6 * 1.4]);
  cdsIris.AppendRecord([5.8 * 2.6, 4.0 * 1.2]);
  cdsIris.AppendRecord([5.0 * 2.3, 3.3 * 1.0]);
  cdsIris.AppendRecord([5.6 * 2.7, 4.2 * 1.3]);
  cdsIris.AppendRecord([5.7 * 3.0, 4.2 * 1.2]);
  cdsIris.AppendRecord([5.7 * 2.9, 4.2 * 1.3]);
  cdsIris.AppendRecord([6.2 * 2.9, 4.3 * 1.3]);
  cdsIris.AppendRecord([5.1 * 2.5, 3.0 * 1.1]);
  cdsIris.AppendRecord([5.7 * 2.8, 4.1 * 1.3]);
  cdsIris.AppendRecord([6.3 * 3.3, 6.0 * 2.5]);
  cdsIris.AppendRecord([5.8 * 2.7, 5.1 * 1.9]);
  cdsIris.AppendRecord([7.1 * 3.0, 5.9 * 2.1]);
  cdsIris.AppendRecord([6.3 * 2.9, 5.6 * 1.8]);
  cdsIris.AppendRecord([6.5 * 3.0, 5.8 * 2.2]);
  cdsIris.AppendRecord([7.6 * 3.0, 6.6 * 2.1]);
  cdsIris.AppendRecord([4.9 * 2.5, 4.5 * 1.7]);
  cdsIris.AppendRecord([7.3 * 2.9, 6.3 * 1.8]);
  cdsIris.AppendRecord([6.7 * 2.5, 5.8 * 1.8]);
  cdsIris.AppendRecord([7.2 * 3.6, 6.1 * 2.5]);
  cdsIris.AppendRecord([6.5 * 3.2, 5.1 * 2.0]);
  cdsIris.AppendRecord([6.4 * 2.7, 5.3 * 1.9]);
  cdsIris.AppendRecord([6.8 * 3.0, 5.5 * 2.1]);
  cdsIris.AppendRecord([5.7 * 2.5, 5.0 * 2.0]);
  cdsIris.AppendRecord([5.8 * 2.8, 5.1 * 2.4]);
  cdsIris.AppendRecord([6.4 * 3.2, 5.3 * 2.3]);
  cdsIris.AppendRecord([6.5 * 3.0, 5.5 * 1.8]);
  cdsIris.AppendRecord([7.7 * 3.8, 6.7 * 2.2]);
  cdsIris.AppendRecord([7.7 * 2.6, 6.9 * 2.3]);
  cdsIris.AppendRecord([6.0 * 2.2, 5.0 * 1.5]);
  cdsIris.AppendRecord([6.9 * 3.2, 5.7 * 2.3]);
  cdsIris.AppendRecord([5.6 * 2.8, 4.9 * 2.0]);
  cdsIris.AppendRecord([7.7 * 2.8, 6.7 * 2.0]);
  cdsIris.AppendRecord([6.3 * 2.7, 4.9 * 1.8]);
  cdsIris.AppendRecord([6.7 * 3.3, 5.7 * 2.1]);
  cdsIris.AppendRecord([7.2 * 3.2, 6.0 * 1.8]);
  cdsIris.AppendRecord([6.2 * 2.8, 4.8 * 1.8]);
  cdsIris.AppendRecord([6.1 * 3.0, 4.9 * 1.8]);
  cdsIris.AppendRecord([6.4 * 2.8, 5.6 * 2.1]);
  cdsIris.AppendRecord([7.2 * 3.0, 5.8 * 1.6]);
  cdsIris.AppendRecord([7.4 * 2.8, 6.1 * 1.9]);
  cdsIris.AppendRecord([7.9 * 3.8, 6.4 * 2.0]);
  cdsIris.AppendRecord([6.4 * 2.8, 5.6 * 2.2]);
  cdsIris.AppendRecord([6.3 * 2.8, 5.1 * 1.5]);
  cdsIris.AppendRecord([6.1 * 2.6, 5.6 * 1.4]);
  cdsIris.AppendRecord([7.7 * 3.0, 6.1 * 2.3]);
  cdsIris.AppendRecord([6.3 * 3.4, 5.6 * 2.4]);
  cdsIris.AppendRecord([6.4 * 3.1, 5.5 * 1.8]);
  cdsIris.AppendRecord([6.0 * 3.0, 4.8 * 1.8]);
  cdsIris.AppendRecord([6.9 * 3.1, 5.4 * 2.1]);
  cdsIris.AppendRecord([6.7 * 3.1, 5.6 * 2.4]);
  cdsIris.AppendRecord([6.9 * 3.1, 5.1 * 2.3]);
  cdsIris.AppendRecord([5.8 * 2.7, 5.1 * 1.9]);
  cdsIris.AppendRecord([6.8 * 3.2, 5.9 * 2.3]);
  cdsIris.AppendRecord([6.7 * 3.3, 5.7 * 2.5]);
  cdsIris.AppendRecord([6.7 * 3.0, 5.2 * 2.3]);
  cdsIris.AppendRecord([6.3 * 2.5, 5.0 * 1.9]);
  cdsIris.AppendRecord([6.5 * 3.0, 5.2 * 2.0]);
  cdsIris.AppendRecord([6.2 * 3.4, 5.4 * 2.3]);
  cdsIris.AppendRecord([5.9 * 3.0, 5.1 * 1.8]);

  // cdsKs.AppendRecord([12.2123, 4.4649]);
  // cdsKs.AppendRecord([15.7892, 2.1289]);
  // cdsKs.AppendRecord([22.1203, 12.3298]);

  DBChart1.RefreshData;
end;

procedure TForm36.Medoide(X, Y: Real; AFieldX, AFieldY: TField);
var
  vDistanciaMenor: Real;
  vDistancia: Real;
begin
  cdsIris.First;
  vDistanciaMenor := 9999999;

  while (not cdsIris.eof) do begin
    vDistancia := abs(cdsIrispetala.AsFloat - X) + abs(cdsIrissepala.AsFloat - Y);

    if (vDistancia < vDistanciaMenor) then begin
      vDistanciaMenor := vDistancia;
      AFieldX.AsFloat := cdsIrispetala.AsFloat;
      AFieldY.AsFloat := cdsIrissepala.AsFloat;
    end;

    cdsIris.Next;
  end;
end;

end.
