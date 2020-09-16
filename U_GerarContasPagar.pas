unit U_GerarContasPagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Spin, ExtCtrls, Grids, DBGrids, Buttons, ComCtrls, StdCtrls, DB,
  pngimage, dateUtils, Mask, DBCtrls;

type
  TFRM_GerarContasPagar = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    Label40: TLabel;
    edParcela: TSpinEdit;
    edtValor: TEdit;
    Label41: TLabel;
    Label42: TLabel;
    edData: TDateTimePicker;
    spbGerarParcelas: TSpeedButton;
    edApto: TEdit;
    edNome: TEdit;
    edCPF: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBGrid1: TDBGrid;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    Label7: TLabel;
    SpeedButton3: TSpeedButton;
    dataAte: TMaskEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_GerarContasPagar: TFRM_GerarContasPagar;

implementation

uses U_DM, U_CadFornecedor, U_Relatorios;

{$R *.dfm}

procedure TFRM_GerarContasPagar.FormCreate(Sender: TObject);
begin
    FRM_GerarContasPagar.Caption := Application.Title + FRM_GerarContasPagar.Caption;
    edData.Date   := EndOfTheMonth(Date);
end;

procedure TFRM_GerarContasPagar.SpeedButton1Click(Sender: TObject);
begin
   Close;
end;

end.
