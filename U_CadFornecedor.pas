unit U_CadFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, ComCtrls, Grids, DBGrids, pngimage,
  Mask, Buttons, DB;

type
  TFRM_CadFornecedor = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    btnIncluir: TSpeedButton;
    btnAlterar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnGravar: TSpeedButton;
    btnCancelar: TSpeedButton;
    SpeedButton9: TSpeedButton;
    PageControl1: TPageControl;
    tbDados: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    SpeedButton1: TSpeedButton;
    PageControl2: TPageControl;
    Situação: TTabSheet;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit16: TDBEdit;
    dbDebitoAluno: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit10: TDBEdit;
    DBComboBox3: TDBComboBox;
    tbPagamentos: TTabSheet;
    Label22: TLabel;
    Label23: TLabel;
    Image1: TImage;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    SpeedButton4: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton7: TSpeedButton;
    GroupBox5: TGroupBox;
    Label35: TLabel;
    Label36: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    EdtData: TDateTimePicker;
    edParcela: TEdit;
    edtValor: TEdit;
    dsFornecedor: TDataSource;
    DBGrid1: TDBGrid;
    dsContasPagar: TDataSource;
    DBNavigator1: TDBNavigator;
    procedure btnIncluirClick(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure dsFornecedorStateChange(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_CadFornecedor: TFRM_CadFornecedor;

implementation

uses U_DM;

{$R *.dfm}

procedure TFRM_CadFornecedor.btnAlterarClick(Sender: TObject);
begin
   DM.qFornecedor.Edit;
end;

procedure TFRM_CadFornecedor.btnCancelarClick(Sender: TObject);
begin
   DM.qFornecedor.Cancel;
end;

procedure TFRM_CadFornecedor.btnExcluirClick(Sender: TObject);
begin
if DM.qContasPagar.RecordCount <> 0  then
 begin
      ShowMessage ('Conta não pode ser Excluída, pois contém relacionamentos!');
      abort;
    end
 else
begin
    if Application.MessageBox('Apagar Registro?',
       'Apagar', 4 + MB_ICONWARNING)= idno then abort else
      DM.qFornecedor.Delete;
      DM.qFornecedor.ApplyUpdates;
    end;
end;

procedure TFRM_CadFornecedor.btnGravarClick(Sender: TObject);
begin
 if Application.MessageBox('Salvar informações?',
   'Salvar', 4 + MB_ICONWARNING)= idno then abort else
    DM.qFornecedor.ApplyUpdates;
end;

procedure TFRM_CadFornecedor.btnIncluirClick(Sender: TObject);
begin
   DM.qFornecedor.Append;
   DM.qFornecedor.FieldByName('DATA_CADASTRO').Value := DatetoStr(now);
   DM.qFornecedor.FieldByName('OBS').Value := '   ';
   DBEdit1.SetFocus;
end;

procedure TFRM_CadFornecedor.DBEdit1Exit(Sender: TObject);
begin
  DBEdit1.Text := FormatFloat('0000',StrToFloat(DBEdit1.Text));
end;

procedure TFRM_CadFornecedor.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  ShowScrollBar(DBGrid1.Handle,SB_HORZ,False);
  if DM.qContasPagarFornecedorSITUACAO.Text = 'A PAGAR' then
    DBGrid1.Canvas.Brush.Color := clRed
  else
    DBGrid1.Canvas.Brush.Color := clBlue;
    DBGrid1.Canvas.FillRect(Rect);
    dbgrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;

procedure TFRM_CadFornecedor.dsFornecedorStateChange(Sender: TObject);
begin
    btnIncluir.Enabled  :=  DM.qFornecedor.State = dsBrowse;
    btnExcluir.Enabled  :=  DM.qFornecedor.State = dsBrowse;
    btnGravar.Enabled   := (DM.qFornecedor.State = dsEdit) or (DM.qFornecedor.State = dsInsert);
    btnCancelar.Enabled := (DM.qFornecedor.State = dsEdit) or (DM.qFornecedor.State = dsInsert);
end;

procedure TFRM_CadFornecedor.FormCreate(Sender: TObject);
begin
   FRM_CadFornecedor.Caption := Application.Title + FRM_CadFornecedor.Caption;
end;

procedure TFRM_CadFornecedor.SpeedButton7Click(Sender: TObject);
var
  I: integer;
begin
if edParcela.Text = '' then
  begin
   ShowMessage('Faltando preencher campo N° de Parcelas!');
   edParcela.SetFocus;
   Exit;
  end;
 begin
if edtValor.Text = '' then
  begin
   ShowMessage('Faltando preencher campo Valor!');
   edtValor.SetFocus;
   Exit;
  end
 else
     DM.qContasPagarFornecedor.Open;
for I := 1 to StrToInt(edParcela.Text) do

begin
  if DM.qContasPagarFornecedor.RecordCount < I then
     DM.qContasPagarFornecedor.Insert
  else
     DM.qContasPagarFornecedor.Append;
     DM.qContasPagarFornecedor.FieldByName('COD_ALUNO').Value        := DBEdit1.Text;
     DM.qContasPagarFornecedor.FieldByName('NOME').Value             := DBEdit2.Text;
     DM.qContasPagarFornecedor.FieldByName('SERVICO').Value        := FORMATDATETIME('"PAGTO A FORNECEDOR-" MMMM"/"YYYY',INCMONTH( DATE, I - 1));
     DM.qContasPagarFornecedor.FieldByName('ENDERECO').Value         := DBEdit3.Text;
     DM.qContasPagarFornecedor.FieldByName('SITUACAO').Value         := 'A PAGAR';
     DM.qContasPagarFornecedor.FieldByName('PARCELA').Value          := i;
     DM.qContasPagarFornecedor.FieldByName('VALOR_DESP_PAGAR').Value := edtValor.Text;
     DM.qContasPagarFornecedor.FieldByName('VALOR_DESP_PAGO').Value  := 'R$ 0,00';
     DM.qContasPagarFornecedor.FieldByName('DATA_VENCIMENTO').Value  := INCMONTH( DATE, I - 1);
     DM.qContasPagarFornecedor.FieldByName('TIPO').Value             := 'DESPESA';
     DM.qContasPagarFornecedor.FieldByName('CONTA_PLANO').Value      := 'PAGTO A FORNECEDOR';
     DM.qContasPagarFornecedor.FieldByName('SERVICO').Value  := FORMATDATETIME('"PAGTO A FORNECEDOR-" MMMM"/"YYYY',INCMONTH( DATE, I - 1));
     DM.qContasPagarFornecedor.ApplyUpdates;
     DM.qContasPagarFornecedor.Next;
  end;
     DM.qContasPagarFornecedor.ApplyUpdates;
     Showmessage('Mensalidades Geradas com Sucesso!');
  end;
end;

procedure TFRM_CadFornecedor.SpeedButton9Click(Sender: TObject);
begin
   Close;
end;

end.
