unit U_ContasPagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, pngimage, ComCtrls, DB,
  IBCustomDataSet, IBQuery, Mask, DBCtrls, dateUtils;

type
  TFRM_ContasPagar = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cbSituacao: TComboBox;
    Image1: TImage;
    Label9: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    lblTotalConsulta: TLabel;
    Panel4: TPanel;
    Label5: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    edTotalGeral: TEdit;
    edPagar: TEdit;
    edTotalPago: TEdit;
    dtDe: TDateTimePicker;
    dtAte: TDateTimePicker;
    procedure btnFecharClick(Sender: TObject);
    procedure btnLancarClick(Sender: TObject);
    procedure btnReceberClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnDetalhesClick(Sender: TObject);
    procedure cbSituacaoChange(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_ContasPagar: TFRM_ContasPagar;

implementation

uses U_LancarContasPagar, U_RealizarPagamento, U_DM, U_Relatorios,
  U_GerarContasPagar, U_CadFornecedor;

{$R *.dfm}

procedure TFRM_ContasPagar.btnAlterarClick(Sender: TObject);
begin
   Application.CreateForm(TFRM_CadContasPagar, FRM_CadContasPagar);
   DM.qContasPagar.Edit;
   FRM_CadContasPagar.btnLancar.Enabled   := True;
   FRM_CadContasPagar.btnCancelar.Enabled := True;
   FRM_CadContasPagar.btnLancar.Caption   := 'Salvar';
   FRM_CadContasPagar.ShowModal;
end;

procedure TFRM_ContasPagar.btnDetalhesClick(Sender: TObject);
begin
   Application.CreateForm(TFRM_CadContasPagar, FRM_CadContasPagar);
   FRM_CadContasPagar.btnLancar.Enabled   := False;
   FRM_CadContasPagar.btnCancelar.Enabled := False;
   FRM_CadContasPagar.ShowModal;
end;

procedure TFRM_ContasPagar.btnExcluirClick(Sender: TObject);
begin
   if Application.MessageBox('Deseja Excluir essa Conta?',
      'Excluir Conta à Pagar?', 4 + MB_ICONWARNING)= idno then abort else
   DM.qContasPagar.Delete;
   DM.qContasPagar.ApplyUpdates;
end;

procedure TFRM_ContasPagar.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TFRM_ContasPagar.btnLancarClick(Sender: TObject);
begin
   Application.CreateForm(TFRM_CadContasPagar, FRM_CadContasPagar);
   DM.qContasPagar.Append;
   FRM_CadContasPagar.dbData.Date                   := Now;
   DM.qContasPagar.FieldByName('SITUACAO').AsString := 'A PAGAR';
   FRM_CadContasPagar.ShowModal;
end;

procedure TFRM_ContasPagar.btnReceberClick(Sender: TObject);
begin
  if DM.qContasPagarSITUACAO.Text = 'PAGO' then
     begin
       ShowMessage ('Conta já paga anteriormente, verifique!');
     end
  else
     begin
       Application.CreateForm(TFRM_RealizarPagamento, FRM_RealizarPagamento);
       DM.qContasPagar.Edit;
       FRM_RealizarPagamento.DBEdit4.Text := DateToStr (now);
       FRM_RealizarPagamento.ShowModal;
     end;
  end;


procedure TFRM_ContasPagar.cbSituacaoChange(Sender: TObject);
var
    vPago, vPagar, vGeral: Real;
begin
    edTotalPago.Text  := 'R$ 0,00';
    edPagar.Text      := 'R$ 0,00';
    edTotalGeral.Text := 'R$ 0,00';
    DM.qContasPagar.Close;
    DM.qContasPagar.SQL.Clear;
    DM.qContasPagar.SQL.Add('select * from MOVIMENTO');
    DM.qContasPagar.SQL.Add('where TIPO =''DESPESA'' and SITUACAO like'+''''+cbSituacao.Text+'%'+'''order By NOME');;
    DM.qContasPagar.Open;
    lblTotalConsulta.Caption  := 'Total Encontrado:  ' + IntTostr(DM.qContasPagar.RecordCount);
    vPago             := 0;
    vPagar            := 0;
    vGeral            := 0;
if  DM.qContasPagar.RecordCount > 0 then begin
    DM.qContasPagar.First;
  while not DM.qContasPagar.Eof do
  begin
    vPagar            := vPagar + DM.qContasPagarVALOR_DESP_PAGAR.AsCurrency;
    vPago             := vPago  + DM.qContasPagarVALOR_DESP_PAGO.AsCurrency;
    vGeral            := vPagar + vPago;
    DM.qContasPagar.Next
  end;
    edTotalGeral.Text := FormatFloat('R$ #,##0.00',vGeral);
    edPagar.Text      := FormatFloat('R$ #,##0.00',vPagar);
    edTotalPago.Text  := FormatFloat('R$ #,##0.00',vPago);
  end;
   if cbSituacao.text  = ''then
  begin
    edPagar.Text      := 'R$ 0,00';
    edTotalPago.Text  := 'R$ 0,00';
    edTotalGeral.Text := 'R$ 0,00';
    DM.qContasPagar.Close;
    DM.qContasPagar.SQL.Clear;
    DM.qContasPagar.SQL.Add('select * from MOVIMENTO where TIPO =''DESPESA''');
    DM.qContasPagar.SQL.Add('order By NOME');
    DM.qContasPagar.Open;
    lblTotalConsulta.Caption  := 'Total Encontrado:  ' + IntTostr(DM.qContasPagar.RecordCount);
    vPago             := 0;
    vPagar            := 0;
    vGeral            := 0;
if  DM.qContasPagar.RecordCount > 0 then begin
    DM.qContasPagar.First;
  while not DM.qContasPagar.Eof do
  begin
    vPagar            := vPagar + DM.qContasPagarVALOR_DESP_PAGAR.AsCurrency;
    vPago             := vPago  + DM.qContasPagarVALOR_DESP_PAGO.AsCurrency;
    vGeral            := vPagar + vPago;
    DM.qContasPagar.Next
  end;
    edTotalGeral.Text := FormatFloat('R$ #,##0.00',vGeral);
    edPagar.Text      := FormatFloat('R$ #,##0.00',vPagar);
    edTotalPago.Text  := FormatFloat('R$ #,##0.00',vPago);
  end;
end;
end;

procedure TFRM_ContasPagar.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   ShowScrollBar(DBGrid1.Handle,SB_HORZ,False);
    if DM.qContasPagarSITUACAO.Text = 'A PAGAR' then
    DBGrid1.Canvas.Brush.Color := clRed
  else
    DBGrid1.Canvas.Brush.Color := clBlue;
    DBGrid1.Canvas.FillRect(Rect);
    dbgrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFRM_ContasPagar.FormActivate(Sender: TObject);
begin
   dtDe.Date  := StartOfTheMonth(Date);
   dtAte.Date := EndOfTheMonth(Date);
end;

procedure TFRM_ContasPagar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    DM.qContasPagar.Active := False;
end;

procedure TFRM_ContasPagar.FormCreate(Sender: TObject);
begin
   FRM_ContasPagar.Caption := Application.Title + FRM_ContasPagar.Caption;
end;

procedure TFRM_ContasPagar.SpeedButton10Click(Sender: TObject);
begin
   Close;
end;

procedure TFRM_ContasPagar.SpeedButton11Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_GerarContasPagar, FRM_GerarContasPagar);
   FRM_GerarContasPagar.edData.date := Now;
   FRM_GerarContasPagar.ShowModal;
end;

procedure TFRM_ContasPagar.SpeedButton2Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_CadContasPagar, FRM_CadContasPagar);
   DM.qContasPagar.Open;
   DM.qContasPagar.Append;
   FRM_CadContasPagar.ShowModal;
end;

procedure TFRM_ContasPagar.SpeedButton3Click(Sender: TObject);
var
    vPago, vPagar, vGeral:   Real;
begin
    edTotalPago.Text  := 'R$ 0,00';
    edPagar.Text      := 'R$ 0,00';
    edTotalGeral.Text := 'R$ 0,00';
    DM.qContasPagar.Close;
    DM.qContasPagar.Sql.Clear;
    DM.qContasPagar.Sql.Add('Select * FROM MOVIMENTO where TIPO =''DESPESA'' and DATA_VENCIMENTO Between :dataini and :datafim order By NOME');
    DM.qContasPagar.Params.ParamByName('dataini').Value := StrToDate(DateToStr(DtDe.Date));
    DM.qContasPagar.Params.ParamByName('datafim').Value := StrToDate(DateToStr(DtAte.Date));
    DM.qContasPagar.Prepare;
    DM.qContasPagar.Open;
    vPago            := 0;
    vPagar           := 0;
    vGeral           := 0;
if  DM.qContasPagar.RecordCount > 0 then begin
    DM.qContasPagar.First;
  while not DM.qContasPagar.Eof do
   begin
    vPagar           := vPagar   + DM.qContasPagarVALOR_DESP_PAGAR.AsCurrency;
    vPago            := vPago    + DM.qContasPagarVALOR_DESP_PAGO.AsCurrency;
    vGeral           := vPago    + vPagar;
    DM.qContasPagar.Next;
  end;
    edTotalPago.Text       := FormatFloat('R$ #,##0.00',vPago);
    edPagar.Text           := FormatFloat('R$ #,##0.00',vPagar);
    edTotalGeral.Text      := FormatFloat('R$ #,##0.00',vGeral);
 end;
 end;

procedure TFRM_ContasPagar.SpeedButton4Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_CadContasPagar, FRM_CadContasPagar);
   DM.qContasPagar.Edit;
   FRM_CadContasPagar.btnLancar.Enabled   := True;
   FRM_CadContasPagar.btnCancelar.Enabled := True;
   FRM_CadContasPagar.btnLancar.Caption   := 'Salvar';
   FRM_CadContasPagar.ShowModal;
end;

procedure TFRM_ContasPagar.SpeedButton5Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_Relatorio, FRM_Relatorio);
   FRM_Relatorio.RelConsultasContasPagar.DeviceType := 'Screen';
   FRM_Relatorio.RelConsultasContasPagar.Print;
end;

procedure TFRM_ContasPagar.SpeedButton6Click(Sender: TObject);
begin
  if Application.MessageBox('Deseja Excluir essa Conta?',
  'Excluir Conta à Pagar?', 4 + MB_ICONWARNING)= idno then abort else
  if DM.qContasPagarSITUACAO.Text = 'PAGO' then
    begin
      ShowMessage('Uma conta Recebida não pode ser Excluida!');
      abort
    end
  else
    begin
       DM.qContasPagar.Delete;
       DM.qContasPagar.ApplyUpdates;
    end;
end;

procedure TFRM_ContasPagar.SpeedButton8Click(Sender: TObject);
begin
if DM.qContasPagar.IsEmpty then
 begin
   ShowMessage('Não existe Conta selecionada!');
   abort
 end
 else
   Application.CreateForm(TFRM_CadContasPagar, FRM_CadContasPagar);
   FRM_CadContasPagar.btnLancar.Enabled   := False;
   FRM_CadContasPagar.btnCancelar.Enabled := False;
   FRM_CadContasPagar.ShowModal;
end;

procedure TFRM_ContasPagar.SpeedButton9Click(Sender: TObject);
begin
if DM.qContasPagar.IsEmpty then
begin
   ShowMessage('Não existe Contas a Pagar!');
   abort
end
else
if DM.qContasPagarSITUACAO.Text = 'PAGO' then
       ShowMessage ('Você não pode Pagar duas vezes uma única Conta!')
  else
     begin
       Application.CreateForm(TFRM_RealizarPagamento, FRM_RealizarPagamento);
       DM.qContasPagar.Edit;
       FRM_RealizarPagamento.DBEdit4.Text := DateToStr (now);
       FRM_RealizarPagamento.ShowModal;
     end;
  end;
end.
