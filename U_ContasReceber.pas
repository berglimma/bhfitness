unit U_ContasReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, pngimage, ExtCtrls, Mask, DBCtrls, Buttons, Grids, DBGrids,
  DB, IBCustomDataSet, IBQuery, ComCtrls, dateUtils;

type
  TFRM_ContasReceber = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit6: TDBEdit;
    DBImage1: TDBImage;
    cbDetalhes: TCheckBox;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    cbSituacao: TComboBox;
    Label2: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    SpeedButton9: TSpeedButton;
    lblTotalConsulta: TLabel;
    Panel4: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    edTotalGeral: TEdit;
    edTotalPago: TEdit;
    edTotalPagar: TEdit;
    Label13: TLabel;
    BalloonHint1: TBalloonHint;
    dtDe: TDateTimePicker;
    dtAte: TDateTimePicker;
    procedure BitBtn6Click(Sender: TObject);
    procedure spBuscaClick(Sender: TObject);
    procedure cbDetalhesClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure cbSituacaoChange(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_ContasReceber: TFRM_ContasReceber;

implementation

uses U_CadContasReceber, U_Busca, U_DM, U_RelRecebimento, U_Relatorios,
  U_GerarContasPagar, U_Principal;

{$R *.dfm}

procedure TFRM_ContasReceber.BitBtn2Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_CadContasReceber, FRM_CadContasReceber);
   DM.qContasReceber.Edit;
   FRM_CadContasReceber.ShowModal;
end;

procedure TFRM_ContasReceber.BitBtn3Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_Relatorio, FRM_Relatorio);
   FRM_Relatorio.RelConsultaContasReceber.Print;
end;

procedure TFRM_ContasReceber.BitBtn6Click(Sender: TObject);
begin
   Close;
end;

procedure TFRM_ContasReceber.BitBtn7Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_CadContasReceber, FRM_CadContasReceber);
   FRM_CadContasReceber.BtnLancar.Enabled := False;
   FRM_CadContasReceber.ShowModal;
end;

procedure TFRM_ContasReceber.BitBtn8Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_Busca, FRM_Busca);
   FRM_Busca.BtnReceber.Visible  := True;
   FRM_Busca.ShowModal;
end;

procedure TFRM_ContasReceber.cbDetalhesClick(Sender: TObject);
begin
  if cbDetalhes.Checked = False then
     begin
       DBGrid1.Height := 398;
       DBGrid1.Top    := 102;
     end
  else
     begin
       DBGrid1.Height := 295;
       DBGrid1.Top    := 204;
     end;
end;

procedure TFRM_ContasReceber.cbSituacaoChange(Sender: TObject);
var
   vPago, vPagar, vGeral: Real;
begin
    edTotalGeral.Text            := 'R$ 0,00';
    edTotalPago.Text             := 'R$ 0,00';
    edTotalPagar.Text            := 'R$ 0,00';
    DM.BuscaContasReceber.Close;
    DM.BuscaContasReceber.SQL.Clear;
    DM.BuscaContasReceber.SQL.Add('select * from MOVIMENTO');
    DM.BuscaContasReceber.SQL.Add('where TIPO =''RECEITA'' and SITUACAO like'+''''+cbSituacao.Text+'%'+'''order By NOME');
    DM.BuscaContasReceber.Open;
    lblTotalConsulta.Caption  := 'Total Encontrado:  ' + IntTostr(DM.BuscaContasReceber.RecordCount);
    vGeral       := 0;
    vPago        := 0;
    vPagar       := 0;
if  DM.BuscaContasReceber.RecordCount > 0 then begin
    DM.BuscaContasReceber.First;
  while not DM.BuscaContasReceber.Eof  do
  begin
    vPagar           := vPagar   + DM.BuscaContasReceberVALOR_REC_PAGAR.AsCurrency;
    vPago            := vPago    + DM.BuscaContasReceberVALOR_REC_PAGO.AsCurrency;
    vGeral           := vPago    + vPagar;
    DM.BuscaContasReceber.Next;
    end;
    edTotalGeral.Text            := FormatFloat('R$ #,##0.00',vGeral);
    edTotalPago.Text             := FormatFloat('R$ #,##0.00',vPago);
    edTotalPagar.Text            := FormatFloat('R$ #,##0.00',vPagar);
   if cbSituacao.text=''then
  begin
    edTotalGeral.Text            := 'R$ 0,00';
    edTotalPago.Text             := 'R$ 0,00';
    edTotalPagar.Text            := 'R$ 0,00';
    DM.BuscaContasReceber.Close;
    DM.BuscaContasReceber.SQL.Clear;
    DM.BuscaContasReceber.SQL.Add('select * from MOVIMENTO where TIPO =''RECEITA''');
    DM.BuscaContasReceber.SQL.Add('order By NOME');
    DM.BuscaContasReceber.Open;
    lblTotalConsulta.Caption  := 'Total Encontrado:  ' + IntTostr(DM.BuscaContasReceber.RecordCount);
    vGeral       := 0;
    vPago        := 0;
    vPagar       := 0;
if  DM.BuscaContasReceber.RecordCount > 0 then begin
    DM.BuscaContasReceber.First;
  while not DM.BuscaContasReceber.Eof  do
  begin
    vPagar           := vPagar   + DM.BuscaContasReceberVALOR_REC_PAGAR.AsCurrency;
    vPago            := vPago    + DM.BuscaContasReceberVALOR_REC_PAGO.AsCurrency;
    vGeral           := vPago    + vPagar;
    DM.BuscaContasReceber.Next;
  end;
    edTotalGeral.Text            := FormatFloat('R$ #,##0.00',vGeral);
    edTotalPago.Text             := FormatFloat('R$ #,##0.00',vPago);
    edTotalPagar.Text            := FormatFloat('R$ #,##0.00',vPagar);
end;
end;
end;
end;

procedure TFRM_ContasReceber.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   ShowScrollBar(DBGrid1.Handle,SB_HORZ,False);
    if DM.BuscaContasReceberSITUACAO.Text = 'A PAGAR' then
    DBGrid1.Canvas.Brush.Color := clRed
  else
    DBGrid1.Canvas.Brush.Color := clBlue;
    DBGrid1.Canvas.FillRect(Rect);
    dbgrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFRM_ContasReceber.Edit1Change(Sender: TObject);
var
   vPago, vPagar, vGeral: Real;
begin
    edTotalGeral.Text            := 'R$ 0,00';
    edTotalPago.Text             := 'R$ 0,00';
    edTotalPagar.Text            := 'R$ 0,00';
    DM.BuscaContasReceber.Close;
    DM.BuscaContasReceber.SQL.Clear;
    DM.BuscaContasReceber.SQL.Add('select * from MOVIMENTO');
    DM.BuscaContasReceber.SQL.Add('where TIPO =''RECEITA'' and NOME like'+''''+Edit1.Text+'%'+'''order By NOME');
    DM.BuscaContasReceber.Open;
    lblTotalConsulta.Caption  := 'Total Encontrado:  ' + IntTostr(DM.BuscaContasReceber.RecordCount);
    vGeral                       := 0;
    vPago                        := 0;
    vPagar                       := 0;
if  DM.BuscaContasReceber.RecordCount > 0 then begin
    DM.BuscaContasReceber.First;
  while not DM.BuscaContasReceber.Eof  do
  begin
    vPagar                       := vPagar   + DM.BuscaContasReceberVALOR_REC_PAGAR.AsCurrency;
    vPago                        := vPago    + DM.BuscaContasReceberVALOR_REC_PAGO.AsCurrency;
    vGeral                       := vPago    + vPagar;
    DM.BuscaContasReceber.Next;
  end;
    edTotalGeral.Text            := FormatFloat('R$ #,##0.00',vGeral);
    edTotalPago.Text             := FormatFloat('R$ #,##0.00',vPago);
    edTotalPagar.Text            := FormatFloat('R$ #,##0.00',vPagar);
  end;
    edTotalGeral.Text            := FormatFloat('R$ #,##0.00',vGeral);
    edTotalPago.Text             := FormatFloat('R$ #,##0.00',vPago);
    edTotalPagar.Text            := FormatFloat('R$ #,##0.00',vPagar);
end;

procedure TFRM_ContasReceber.FormActivate(Sender: TObject);
begin
   ShowScrollBar(DBGrid1.Handle,SB_HORZ,False);
   dtDe.Date  := StartOfTheMonth(Date);
   dtAte.Date := EndOfTheMonth(Date);
end;

procedure TFRM_ContasReceber.FormCreate(Sender: TObject);
begin
   FRM_ContasReceber.Caption := Application.Title + FRM_ContasReceber.Caption;
end;

procedure TFRM_ContasReceber.spBuscaClick(Sender: TObject);
begin
   Application.CreateForm(TFRM_Busca, FRM_Busca);
   FRM_Busca.ShowModal;
end;
procedure TFRM_ContasReceber.SpeedButton1Click(Sender: TObject);
var
   vPago, vPagar, vGeral: Real;
begin
    edTotalGeral.Text            := 'R$ 0,00';
    edTotalPago.Text             := 'R$ 0,00';
    edTotalPagar.Text            := 'R$ 0,00';
    DM.BuscaContasReceber.Close;
    DM.BuscaContasReceber.Sql.Clear;
    DM.BuscaContasReceber.Sql.Add('Select * from MOVIMENTO where TIPO =''RECEITA'' and DATA_VENCIMENTO Between :dataini and :datafim order By NOME');
    DM.BuscaContasReceber.Params.ParamByName('dataini').Value := StrToDate(DateToStr(DtDe.Date));
    DM.BuscaContasReceber.Params.ParamByName('datafim').Value := StrToDate(DateToStr(DtAte.Date));
    DM.BuscaContasReceber.Open;
    lblTotalConsulta.Caption     := 'Total Encontrado:  ' + IntTostr(DM.BuscaContasReceber.RecordCount);
    vGeral       := 0;
    vPago        := 0;
    vPagar       := 0;
if  DM.BuscaContasReceber.RecordCount > 0 then begin
    DM.BuscaContasReceber.First;
  while not DM.BuscaContasReceber.Eof  do
  begin
    vPagar           := vPagar   + DM.BuscaContasReceberVALOR_REC_PAGAR.AsCurrency;
    vPago            := vPago    + DM.BuscaContasReceberVALOR_REC_PAGO.AsCurrency;
    vGeral           := vPago    + vPagar;
    DM.BuscaContasReceber.Next
end;
    edTotalGeral.Text            := FormatFloat('R$ #,##0.00',vGeral);
    edTotalPago.Text             := FormatFloat('R$ #,##0.00',vPago);
    edTotalPagar.Text            := FormatFloat('R$ #,##0.00',vPagar);
end;
end;

procedure TFRM_ContasReceber.SpeedButton2Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_CadContasReceber, FRM_CadContasReceber);
   DM.BuscaContasReceber.Active                              := True;
   DM.BuscaContasReceber.Append;
   DM.BuscaContasReceber.FieldByName('TIPO').Value           := 'RECEITA';
   DM.BuscaContasReceber.FieldByName('SITUACAO').Value       := 'A PAGAR';
   DM.BuscaContasReceber.FieldByName('VALOR_REC_PAGO').Value := 'R$ 0,00';
   DM.BuscaContasReceber.FieldByName('USUARIO').Text         := FRM_Principal.StatusBar1.Panels[2].Text;
   FRM_CadContasReceber.edDescricao.Enabled                  := True;
   FRM_CadContasReceber.dbEdit7.Enabled                      := True;
   FRM_CadContasReceber.edNomeAluno.Color                    := clInfoBk;
   FRM_CadContasReceber.edEnderecoAluno.Color                := clInfoBk;
   FRM_CadContasReceber.dbData.Text                          := Datetostr(now);
   FRM_CadContasReceber.ShowModal;
end;

procedure TFRM_ContasReceber.SpeedButton3Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_CadContasReceber, FRM_CadContasReceber);
   DM.BuscaContasReceber.Edit;
   FRM_CadContasReceber.ShowModal;
end;

procedure TFRM_ContasReceber.SpeedButton4Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_Relatorio, FRM_Relatorio);
   FRM_Relatorio.RelConsultaContasReceber.DeviceType := 'Screen';
   FRM_Relatorio.RelConsultaContasReceber.Print;
end;

procedure TFRM_ContasReceber.SpeedButton5Click(Sender: TObject);
begin
  Application.CreateForm(TFRM_Relatorio, FRM_Relatorio);
  FRM_Relatorio.RelReciboMensalidade.DeviceType := 'Screen';
  FRM_Relatorio.RelReciboMensalidade.Print;
end;

procedure TFRM_ContasReceber.SpeedButton6Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_CadContasReceber, FRM_CadContasReceber);
   FRM_CadContasReceber.BtnLancar.Enabled := False;
   FRM_CadContasReceber.ShowModal;
end;

procedure TFRM_ContasReceber.SpeedButton7Click(Sender: TObject);
begin
if DM.BuscaContasReceber.IsEmpty then
   begin
     ShowMessage('Não existe Contas a Receber!');
     abort
   end
else
 if DM.BuscaContasReceber.FieldByName('SITUACAO').Value = 'PAGO' then
       begin
        ShowMessage('Você não pode Receber duas vezes uma única Conta!');
        abort;
       end
 else
  begin
    Application.CreateForm(TFRM_Receber, FRM_Receber);
    FRM_Receber.dtRecebimento.Date := Now;
    FRM_Receber.DBDataVencimento.Date := DM.BuscaContasReceber.FieldByName('DATA_VENCIMENTO').Value;
    FRM_Receber.ShowModal;
   end;
end;

procedure TFRM_ContasReceber.SpeedButton8Click(Sender: TObject);
begin
   Close;
end;
end.
