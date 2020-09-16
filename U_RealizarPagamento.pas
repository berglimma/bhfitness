unit U_RealizarPagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, pngimage, ExtCtrls, ComCtrls, DBCtrls, DB, Mask;

type
  TFRM_RealizarPagamento = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Image1: TImage;
    Label9: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label7: TLabel;
    cbForma: TDBComboBox;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_RealizarPagamento: TFRM_RealizarPagamento;

implementation

uses U_DM;

{$R *.dfm}

procedure TFRM_RealizarPagamento.FormCreate(Sender: TObject);
begin
   FRM_RealizarPagamento.Caption := Application.Title + FRM_RealizarPagamento.Caption;
end;

procedure TFRM_RealizarPagamento.SpeedButton1Click(Sender: TObject);
begin
  if cbForma.Text = '' then
     begin
      Showmessage('Você deve selecionar uma forma de Pagamento!');
      abort
     end
     else
     begin
      DM.qContasPagar.Edit;
      DM.qContasPagar.FieldByName('SITUACAO').AsString         := 'PAGO';
      DM.qContasPagar.FieldByName('VALOR_DESP_PAGO').Value     := DM.qContasPagar.FieldByName('VALOR_DESP_PAGAR').Value;
      DM.qContasPagar.FieldByName('VALOR_DESP_PAGAR').Value    := 'R$ 0,00';
      DM.qContasPagar.ApplyUpdates;
      Close;
end;
end;

procedure TFRM_RealizarPagamento.SpeedButton2Click(Sender: TObject);
begin
   DM.qContasPagar.Cancel;
   Close;
end;

procedure TFRM_RealizarPagamento.SpeedButton3Click(Sender: TObject);
begin
   DM.qContasPagar.Cancel;
   Close;
end;

end.
