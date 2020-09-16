unit U_FluxoCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, pngimage, ComCtrls, Grids, DBGrids, Buttons, DB,
  IBCustomDataSet, IBQuery, dateUtils, Mask, DBCtrls;

type
  TFRM_FluxoCaixa = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Label9: TLabel;
    Label8: TLabel;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    edEntrada: TEdit;
    edSaida: TEdit;
    edsaldoAnterior: TDBEdit;
    edSaldo: TEdit;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    SpeedButton3: TSpeedButton;
    dtInicio: TDateTimePicker;
    dtFim: TDateTimePicker;
    Panel2: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Panel5: TPanel;
    procedure BitBtn6Click(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_FluxoCaixa: TFRM_FluxoCaixa;

implementation

uses U_Principal, U_DM, U_DetalhamentoRecebimentos, U_Relatorios, U_Login;


{$R *.dfm}

procedure TFRM_FluxoCaixa.BitBtn6Click(Sender: TObject);
begin
   Close;
end;

procedure TFRM_FluxoCaixa.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   ShowScrollBar(DBGrid2.Handle,SB_HORZ,False);
  if DM.qFluxoTIPO.Text = 'RECEITA' then
    DBGrid2.Canvas.Brush.Color := clBlue
  else
    DBGrid2.Canvas.Brush.Color := clRed;
    DBGrid2.Canvas.FillRect(Rect);
    dbgrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFRM_FluxoCaixa.FormActivate(Sender: TObject);
begin
    dtInicio.Date      := Now;
    dtFim.Date         := Now;
end;

procedure TFRM_FluxoCaixa.FormCreate(Sender: TObject);
begin
   FRM_FluxoCaixa.Caption := Application.Title + FRM_FluxoCaixa.Caption
end;

procedure TFRM_FluxoCaixa.SpeedButton1Click(Sender: TObject);
begin
if DM.qFluxo.IsEmpty then
 begin
     ShowMessage('Não existe valores em Memória, primeiro clique em Consultar!');
     abort;
 end
 else
     Application.CreateForm(TFRM_Relatorio, FRM_Relatorio);
     FRM_Relatorio.RelFluxoCaixa.DeviceType                := 'Screen';
     FRM_Relatorio.RelFluxoCaixa.Print;
 end;

procedure TFRM_FluxoCaixa.SpeedButton2Click(Sender: TObject);
begin
    Close;
end;

procedure TFRM_FluxoCaixa.SpeedButton3Click(Sender: TObject);
var
    vEntrada, vSaida, vSaldo: Real;
begin
    edEntrada.Text       := 'R$ 0,00';
    edSaida.Text         := 'R$ 0,00';
    edSaldo.Text         := 'R$ 0,00';
    DM.qFluxo.Close;
    DM.qFluxo.Sql.Clear;
    DM.qFluxo.Sql.Add('Select * FROM MOVIMENTO where SITUACAO =''PAGO'' and DATA_RECEBIMENTO Between :dataini and :datafim');
    DM.qFluxo.Params.ParamByName('dataini').Value := StrToDate(DateToStr(dtInicio.Date));
    DM.qFluxo.Params.ParamByName('datafim').Value := StrToDate(DateToStr(dtFim.Date));
    DM.qFluxo.Prepare;
    DM.qFluxo.Open;
    vEntrada         := 0;
    vSaida           := 0;
    vSaldo           := 0;
if  DM.qFluxo.RecordCount > 0 then begin
    DM.qFluxo.First;
  while not DM.qFluxo.Eof do
  begin
    vEntrada         := vEntrada + DM.qFluxoVALOR_REC_PAGO.Value;
    vSaida           := vSaida   + DM.qFluxoVALOR_DESP_PAGO.Value;
    vSaldo           := vSaldo   + DM.qFluxoVALOR_REC_PAGO.Value - DM.qFluxoVALOR_DESP_PAGO.Value;
    DM.qFluxo.Next
 end;
    edEntrada.Text        := FormatFloat('R$ #,##0.00',vEntrada);
    edSaida.Text          := FormatFloat('R$ #,##0.00',vSaida);
    edSaldo.Text          := FormatFloat('R$ #,##0.00',vSaldo);
end;
end;

procedure TFRM_FluxoCaixa.SpeedButton4Click(Sender: TObject);
begin
 if Application.MessageBox('O Caixa ainda não está fechado, deseja fecha-lo?',
       'Fechar caixa?', 4 + MB_ICONWARNING)= idno then
       Abort;
 if dtInicio.Date <> dtFim.Date then
     ShowMessage('Você deve selecionar apenas o dia atual!');
     Abort;
     DM.qFluxo.Edit;
     DM.qFluxo.FieldByName('SALDO_ANTERIOR').Value := edSaldo.Text;
     DM.qFluxo.ApplyUpdates;
     ShowMessage('O Caixa foi fechado com Sucesso!');
end;

procedure TFRM_FluxoCaixa.SpeedButton5Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_DetalhamentoRecebimentos, FRM_DetalhamentoRecebimentos);
   FRM_DetalhamentoRecebimentos.ShowModal;
end;
procedure TFRM_FluxoCaixa.SpeedButton7Click(Sender: TObject);
begin
   Close;
end;

end.
