unit U_LancarContasPagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, pngimage, ExtCtrls, Mask, DBCtrls, DB;

type
  TFRM_CadContasPagar = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Image1: TImage;
    Label9: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dbHistorico: TDBEdit;
    ldbContaPlano: TDBLookupComboBox;
    dbCodigo: TDBEdit;
    Label5: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    BtnCancelar: TSpeedButton;
    BtnFechar: TSpeedButton;
    Label6: TLabel;
    lkFornecedor: TDBLookupComboBox;
    dbData: TDateTimePicker;
    dbValor: TDBEdit;
    BtnLancar: TSpeedButton;
    procedure btnFecharClick(Sender: TObject);
    procedure btnLancarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure dbCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_CadContasPagar: TFRM_CadContasPagar;

implementation

uses U_DM, U_Principal;

{$R *.dfm}

procedure TFRM_CadContasPagar.btnCancelarClick(Sender: TObject);
begin
    DM.qContasPagar.Cancel;
    Close;
end;

procedure TFRM_CadContasPagar.btnFecharClick(Sender: TObject);
begin
    DM.qContasPagar.Cancel;
    Close;
end;

procedure TFRM_CadContasPagar.btnLancarClick(Sender: TObject);
begin
 if lkFornecedor.Text = '' then
   begin
    ShowMessage('Você deve informar o Fornecedor!');
    lkFornecedor.SetFocus;
    Abort
   end;
 if ldbContaPlano.Text = '' then
   begin
    ShowMessage('Você deve informar a Conta do Plano de Contas!');
    ldbContaPlano.SetFocus;
    Abort
   end;
 if dbHistorico.Text = '' then
   begin
    ShowMessage('Você deve informar o Histórico!');
    dbHistorico.SetFocus;
    Abort
   end;
 if DBValor.Text = '' then
   begin
    ShowMessage('Você deve informar o Valor do Lançamento!');
    DBValor.SetFocus;
    Abort
   end
   else
    DM.qContasPagar.FieldByName('TIPO').Value            := 'DESPESA';
    DM.qContasPagar.FieldByName('SITUACAO').Value        := 'A PAGAR';
    DM.qContasPagar.FieldByName('DATA_VENCIMENTO').Value := dbData.Date;
    DM.qContasPagar.FieldByName('VALOR_DESP_PAGO').Value := 'R$ 0,00';
    DM.qContasPagar.FieldByName('SERVICO').Value         := FORMATDATETIME('"PGTO A FORNECEDOR -" MMMM"/"YYYY',INCMONTH( DATE));;
    DM.qContasPagar.ApplyUpdates;
    Close;
end;
procedure TFRM_CadContasPagar.dbCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if HiWord(GetKeyState(VK_SHIFT)) <> 0 then
      SelectNext(Sender as TWinControl,False,True)
    else
      SelectNext(Sender as TWinControl,True,True);
    Key := #0;
  end;
end;

procedure TFRM_CadContasPagar.FormCreate(Sender: TObject);
begin
  FRM_CadContasPagar.Caption := Application.Title + FRM_CadContasPagar.Caption;
end;

procedure TFRM_CadContasPagar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key= #13 then
    begin
      perform(cm_dialogkey,vk_tab,0);
      key:=#0;
    end;
  if key= #27 then
      close;
end;

procedure TFRM_CadContasPagar.FormShow(Sender: TObject);
begin
   DBData.Date := Now;
end;

procedure TFRM_CadContasPagar.SpeedButton2Click(Sender: TObject);
begin
    DM.qContasPagar.Cancel;
    Close;
end;

procedure TFRM_CadContasPagar.SpeedButton3Click(Sender: TObject);
begin
    DM.qContasPagar.Cancel;
    Close;
end;
end.
