unit U_CadContasReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, DBCtrls, DB, Mask, pngimage,
  IBCustomDataSet, IBQuery, IBUpdateSQL;

type
  TFRM_CadContasReceber = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    dbData: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Image1: TImage;
    edEnderecoAluno: TDBEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    BtnLancar: TSpeedButton;
    btnFechar: TSpeedButton;
    edNomeAluno: TDBEdit;
    edDescricao: TDBEdit;
    edUsuario: TDBEdit;
    Label1: TLabel;
    edCodigoAluno: TDBEdit;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BtnLancarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edCodigoAlunoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_CadContasReceber: TFRM_CadContasReceber;

implementation

uses U_DM, U_Busca, U_RelRecebimento;

{$R *.dfm}

procedure TFRM_CadContasReceber.BitBtn1Click(Sender: TObject);
begin
  DM.BuscaContasReceber.ApplyUpdates;
  Close;
end;

procedure TFRM_CadContasReceber.BitBtn4Click(Sender: TObject);
begin
   DM.BuscaContasReceber.Cancel;
   Close;
end;

procedure TFRM_CadContasReceber.BtnLancarClick(Sender: TObject);
begin
if edNomeAluno.Text = '' then
  begin
   ShowMessage('Obrigatório o Nome do Aluno!');
   Abort;
  end;
if DBEdit7.Text = '' then
  begin
   ShowMessage('Obrigatório informar o Valor!');
   DBEdit7.SetFocus;
   Abort;
  end
else
   DM.BuscaContasReceber.ApplyUpdates;
if Application.MessageBox('Deseja efetuar o Pagamento?',
      'Efetuar Pagamento?', 4 + MB_ICONWARNING)= idno then
   Close
else
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
    FRM_Receber.dtRecebimento.Date    := Now;
    FRM_Receber.DBDataVencimento.Date := DM.BuscaContasReceber.FieldByName('DATA_VENCIMENTO').Value;
    FRM_Receber.ShowModal;
   end;
   Close;
end;

procedure TFRM_CadContasReceber.edCodigoAlunoKeyPress(Sender: TObject;
  var Key: Char);
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

procedure TFRM_CadContasReceber.FormCreate(Sender: TObject);
begin
   FRM_CadContasReceber.Caption := Application.Title + FRM_CadContasReceber.Caption;
end;

procedure TFRM_CadContasReceber.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key= #13 then
    begin
      perform(cm_dialogkey,vk_tab,0);
      key:=#0;
    end;
  if key= #27 then
      close;
end;

procedure TFRM_CadContasReceber.SpeedButton1Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_Busca, FRM_Busca);
   FRM_Busca.ShowModal;
end;

procedure TFRM_CadContasReceber.btnFecharClick(Sender: TObject);
begin
   DM.BuscaContasReceber.Cancel;
   Close;
end;
end.
