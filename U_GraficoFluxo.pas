unit U_GraficoFluxo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TeEngine, TeeProcs, Chart, DBChart, Series, DB,
  IBCustomDataSet, IBQuery;

type
  TFRM_GraficoFluxo = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    dsFluxo: TDataSource;
    qFluxo: TIBQuery;
    qFluxoVALOR_RECEITA: TIBBCDField;
    qFluxoVALOR_DESPESA: TIBBCDField;
    qFluxoDATA_RECEBIMENTO: TDateField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_GraficoFluxo: TFRM_GraficoFluxo;

implementation

{$R *.dfm}

procedure TFRM_GraficoFluxo.FormCreate(Sender: TObject);
begin
   FRM_GraficoFluxo.Caption := Application.Title + FRM_GraficoFluxo.Caption;
end;

end.
