unit U_Pacientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, DBCtrls, DB,  ComCtrls, ExtDlgs, DBGrids,
  pngimage, IBCustomDataSet, IBUpdateSQL, IBQuery, jpeg, IdBaseComponent,
  Mask, Grids, ClipBrd;

type
  TFRM_CadPacientes = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    tbDados: TTabSheet;
    PageControl2: TPageControl;
    Situação: TTabSheet;
    GroupBox1: TGroupBox;
    tbPagamentos: TTabSheet;
    Label22: TLabel;
    Label23: TLabel;
    Image1: TImage;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    DBComboBox1: TDBComboBox;
    Label15: TLabel;
    DBEdit10: TDBEdit;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    OpenPictureDialog1: TOpenPictureDialog;
    DBGrid2: TDBGrid;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    dbDebitoAluno: TDBEdit;
    DBComboBox3: TDBComboBox;
    DBComboBox4: TDBComboBox;
    GroupBox5: TGroupBox;
    Label35: TLabel;
    Label36: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    EdtData: TDateTimePicker;
    edtDEscricao: TEdit;
    edParcela: TEdit;
    edtValor: TEdit;
    edControle: TEdit;
    Label39: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    btnIncluir: TSpeedButton;
    SpeedButton5: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnGravar: TSpeedButton;
    btnCancelar: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Panel2: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Edit2: TEdit;
    Edit3: TEdit;
    DBMemo1: TDBMemo;
    Label17: TLabel;
    DbDataCadastro: TDBEdit;
    DBNavigator3: TDBNavigator;
    DBImage1: TDBImage;
    dsClientes: TDataSource;
    Label18: TLabel;
    Label25: TLabel;
    qContaClientes: TIBQuery;
    qContaClientesCOUNT: TIntegerField;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label24: TLabel;
    DBEdit7: TDBEdit;
    DBComboBox2: TDBComboBox;
    Label26: TLabel;
    DBEdit13: TDBEdit;
    Label27: TLabel;
    DBEdit16: TDBEdit;
    SpeedButton10: TSpeedButton;
    procedure BitBtn4Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure FormActivteate(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dsClientesStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
  private

    { Private declarations }
  public

    { Public declarations }
  end;

var
  FRM_CadPacientes: TFRM_CadPacientes;
implementation

uses U_DM, U_ContasReceber, U_CadContasReceber, U_RelRecebimento, U_Busca,
  U_RelRecebimentoAluno, U_GerarContasPagar;
function IdadeAtual(Nascimento : TDate): Integer;
    var AuxIdade, Meses : string;
        MesesFloat : Real;
        IdadeInc, IdadeReal : Integer;
    begin
      AuxIdade := Format('%0.2f', [(Date - Nascimento) / 365.6]);
      Meses := FloatToStr(Frac(StrToFloat(AuxIdade)));
      if AuxIdade = '0' then
         begin
         Result := 0;
         Exit;
         end;
      if Meses[1] = '-' then
         begin
         Meses := FloatToStr(StrToFloat(Meses) * -1);
         end;
      Delete(Meses, 1, 2);
      if Length(Meses) = 1 then
         begin
         Meses := Meses + '0';
         end;
      if (Meses <> '0') And (Meses <> '') then
         begin
         MesesFloat := Round(((365.6 * StrToInt(Meses))
                 / 100) / 30.47)
         end
      else
         begin
         MesesFloat := 0;
         end;
      if MesesFloat <> 12 then
         begin
         IdadeReal := Trunc(StrToFloat(AuxIdade)); // + MesesFloat;
         end
      else
         begin
         IdadeInc := Trunc(StrToFloat(AuxIdade));
         Inc(IdadeInc);
         IdadeReal := IdadeInc;
         end;
      Result := IdadeReal;
    end;

{$R *.dfm}
procedure TFRM_CadPacientes.BitBtn6Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_CadContasReceber, FRM_CadContasReceber);
   DM.qContasReceber.Append;
   FRM_CadContasReceber.dbData.text          := datetostr(now);
   FRM_CadContasReceber.edCodigoAluno.Text   := FRM_CadPacientes.DBEdit1.Text;
   FRM_CadContasReceber.edNomeAluno.Text     := FRM_CadPacientes.DBEdit2.Text;
   FRM_CadContasReceber.edenderecoAluno.Text := FRM_CadPacientes.DBEdit3.Text;
   FRM_CadContasReceber.ShowModal;
end;

procedure TFRM_CadPacientes.BitBtn8Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_CadContasReceber, FRM_CadContasReceber);
   FRM_CadContasReceber.edDescricao.Enabled   := True;
   FRM_CadContasReceber.DBEdit7.Enabled       := True;
   DM.qContasReceber.Edit;
   FRM_CadContasReceber.ShowModal;
end;

procedure TFRM_CadPacientes.BitBtn9Click(Sender: TObject);
begin
  if Application.MessageBox('Apagar Registro?',
   'Apagar', 4 + MB_ICONWARNING)= idno then abort else
   DM.qContasReceber.Delete;
   DM.qContasReceber.ApplyUpdates;
end;

procedure TFRM_CadPacientes.btnCancelarClick(Sender: TObject);
begin
   DM.qAlunos.Cancel;
end;

procedure TFRM_CadPacientes.btnExcluirClick(Sender: TObject);
begin
if Application.MessageBox('Apagar Registro?',
     'Apagar', 4 + MB_ICONWARNING)= idno then abort else
    DM.qAlunos.Delete;
    DM.qAlunos.ApplyUpdates;
end;

procedure TFRM_CadPacientes.btnGravarClick(Sender: TObject);
begin
if DBEdit2.Text = '' then
  begin
   ShowMessage('Obrigatório informar o Nome do Paciente!');
   DBEdit2.SetFocus;
   Abort
  end;
if DBEdit3.Text = '' then
  begin
   ShowMessage('Obrigatório informar o Endereço do Paciente!');
   DBEdit3.SetFocus;
   Abort
  end;
if DBEdit4.Text = '' then
  begin
   ShowMessage('Obrigatório informar o Bairro do Paciente!');
   DBEdit4.SetFocus;
   Abort
  end;
if DBEdit5.Text = '' then
  begin
   ShowMessage('Obrigatório informar o CEP do Paciente!');
   DBEdit5.SetFocus;
   Abort
  end;
if DBEdit6.Text = '' then
  begin
   ShowMessage('Obrigatório informar a Cidade do Paciente!');
   DBEdit6.SetFocus;
   Abort
  end;
if DBCombobox3.Text = '' then
  begin
   ShowMessage('Obrigatório informar a UF do Paciente!');
   DBcombobox3.SetFocus;
   Abort
  end;
if DBEdit8.Text = '' then
  begin
   ShowMessage('Obrigatório informar pelo menos um contato telefônico do Paciente!');
   DBEdit8.SetFocus;
   Abort
  end;
if DBEdit9.Text = '' then
  begin
   ShowMessage('Obrigatório informar pelo menos um contato telefônico do Paciente!');
   DBEdit9.SetFocus;
   Abort
  end;
if DBCombobox1.Text = '' then
  begin
   ShowMessage('Obrigatório informar o Sexo do Paciente!');
   DBCombobox1.SetFocus;
   Abort
  end;
if DBEdit10.Text = '' then
  begin
   ShowMessage('Obrigatório informar a Data de Nascimento do Paciente!');
   DBEdit10.SetFocus;
   Abort
  end;
if DBEdit11.Text = '' then
  begin
   ShowMessage('Obrigatório informar o CPF do Paciente!');
   DBEdit11.SetFocus;
   Abort
  end;
if DBEdit12.Text = '' then
  begin
   ShowMessage('Obrigatório informar o RG do Paciente!');
   DBEdit12.SetFocus;
   Abort
  end;
if DBCombobox4.Text = '' then
  begin
   ShowMessage('Obrigatório informar a UF do RG!');
   DBCombobox4.SetFocus;
   Abort
  end;
if DBEdit10.Text = '' then
  begin
   ShowMessage('Obrigatório informar a Data de Nascimento!');
   DBEdit10.SetFocus;
   Abort
  end;
if DBEdit15.Text = '' then
  begin
   ShowMessage('Obrigatório informar a Idade do Paciente!');
   DBEdit15.SetFocus;
   Abort
  end;
if DBEdit16.Text = '' then
  begin
   ShowMessage('Obrigatório informar o Convênio do Paciente!');
   DBEdit16.SetFocus;
   Abort
  end
else
if (DM.qAlunos.State = dsEdit) or (DM.qAlunos.State = dsInsert) then begin
  if Application.MessageBox('Salvar informações?',
     'Salvar', 4 + MB_ICONWARNING)= idno then abort else
      DM.qAlunos.ApplyUpdates;
  end;
end;

procedure TFRM_CadPacientes.BitBtn12Click(Sender: TObject);
begin
    Application.CreateForm(TFRM_Receber, FRM_Receber);
    DM.qContasReceber.Edit;
    FRM_Receber.ShowModal;
end;

procedure TFRM_CadPacientes.BitBtn1Click(Sender: TObject);
begin
    DM.qAlunos.Edit;
end;

procedure TFRM_CadPacientes.BitBtn4Click(Sender: TObject);
begin
   Close;
end;

procedure TFRM_CadPacientes.DBEdit1Exit(Sender: TObject);
begin
    DBEdit1.Text := FormatFloat('000000',StrToFloat(DBEdit1.Text));
end;

procedure TFRM_CadPacientes.DBEdit1KeyPress(Sender: TObject; var Key: Char);
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

procedure TFRM_CadPacientes.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  ShowScrollBar(DBGrid2.Handle,SB_HORZ,False);
    if DM.qContasReceberSITUACAO.Text = 'A PAGAR' then
      DBGrid2.Canvas.Brush.Color := clRed
  else
    DBGrid2.Canvas.Brush.Color := clBlue;
    DBGrid2.Canvas.FillRect(Rect);
    dbgrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
 end;

procedure TFRM_CadPacientes.dsClientesStateChange(Sender: TObject);
begin
    btnincluir.Enabled  :=  DM.qAlunos.State = dsBrowse;
    btnExcluir.Enabled  :=  DM.qAlunos.State = dsBrowse;
    btnGravar.Enabled   := (DM.qAlunos.State = dsEdit) or (DM.qAlunos.State = dsInsert);
    btnCancelar.Enabled := (DM.qAlunos.State = dsEdit) or (DM.qAlunos.State = dsInsert);
end;

procedure TFRM_CadPacientes.FormActivteate(Sender: TObject);
begin
    Dm.qContasReceber.Close;
    Dm.qContasReceber.Open;
    Label18.Caption := 'Total Cadastrados: ' +qContaClientes.FieldByName('count').AsString;
end;

procedure TFRM_CadPacientes.FormCreate(Sender: TObject);
begin
   FRM_CadPacientes.Caption := Application.Title + FRM_CadPacientes.Caption;
end;

procedure TFRM_CadPacientes.FormShow(Sender: TObject);
begin
    DBEdit1.Text := FormatFloat('000000',StrToFloat(DBEdit1.Text));
    DBEdit1.SetFocus;
    EdtData.Date := Now;
end;

procedure TFRM_CadPacientes.SpeedButton11Click(Sender: TObject);
begin
    Application.CreateForm(TFRM_CadContasReceber, FRM_CadContasReceber);
    FRM_CadContasReceber.BtnLancar.Visible     := False;
    FRM_CadContasReceber.edDescricao.Enabled   := False;
    FRM_CadContasReceber.dbData.Enabled        := False;
    FRM_CadContasReceber.DBEdit7.Enabled       := False;
    FRM_CadContasReceber.ShowModal;
end;

procedure TFRM_CadPacientes.SpeedButton12Click(Sender: TObject);
begin
  if DM.qContasReceberSITUACAO.Text = 'PAGO' then
     begin
       ShowMessage ('Conta já paga anteriormente, verifique!');
     end
  else
     begin
      Application.CreateForm(TFRM_RecebimentoAluno, FRM_RecebimentoAluno);
      DM.qContasReceber.Edit;
      DM.qContasReceberTIPO.Text := 'RECEITA';
      FRM_RecebimentoAluno.dtRecebimento.date    := Now;
      FRM_RecebimentoAluno.DBDataVencimento.Date := DM.qContasReceber.FieldByName('DATA_VENCIMENTO').Value;
      FRM_RecebimentoAluno.ShowModal;
     end;
end;

procedure TFRM_CadPacientes.SpeedButton15Click(Sender: TObject);
begin
   DM.qContasReceber.Delete;
   DM.qContasReceber.ApplyUpdates;
end;

procedure TFRM_CadPacientes.SpeedButton18Click(Sender: TObject);
begin
  if DM.qContasReceberSITUACAO.Text = 'PAGO' then
     begin
       ShowMessage ('Conta já paga anteriormente, verifique!');
     end
  else
     begin
      Application.CreateForm(TFRM_RecebimentoAluno, FRM_RecebimentoAluno);
      DM.qContasReceber.Edit;
      DM.qContasReceberTIPO.Text := 'RECEITA';
      FRM_RecebimentoAluno.dtRecebimento.date    := Now;
      FRM_RecebimentoAluno.DBDataVencimento.Date := DM.qContasReceber.FieldByName('DATA_VENCIMENTO').Value;
      FRM_RecebimentoAluno.ShowModal;
end;
end;

procedure TFRM_CadPacientes.SpeedButton1Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_Busca, FRM_Busca);
   FRM_Busca.DBGrid1.Enabled := False;
   FRM_Busca.ShowModal;
end;

procedure TFRM_CadPacientes.SpeedButton4Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_CadContasReceber, FRM_CadContasReceber);
   DM.qContasReceber.Append;
   FRM_CadContasReceber.dbData.text                 := datetostr(now);
   FRM_CadContasReceber.edCodigoAluno.Text          := FRM_CadPacientes.DBEdit1.Text;
   FRM_CadContasReceber.edNomeAluno.Text            := FRM_CadPacientes.DBEdit2.Text;
   FRM_CadContasReceber.edenderecoAluno.Text        := FRM_CadPacientes.DBEdit3.Text;
   FRM_CadcontasReceber.DBEdit7.Enabled             := True;
   DM.qContasReceber.FieldByName('SITUACAO').Value  := 'A PAGAR';
   FRM_CadContasReceber.ShowModal;
end;

procedure TFRM_CadPacientes.SpeedButton5Click(Sender: TObject);
begin
if Application.MessageBox('Editar Registro?',
   'Editar', 4 + MB_ICONWARNING)= idno then abort else
  DM.qAlunos.Edit;
end;

procedure TFRM_CadPacientes.SpeedButton6Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_CadContasReceber, FRM_CadContasReceber);
   FRM_CadContasReceber.edDescricao.Enabled   := True;
   FRM_CadContasReceber.DBEdit7.Enabled       := True;
   DM.qContasReceber.Edit;
   FRM_CadContasReceber.ShowModal;
end;

procedure TFRM_CadPacientes.SpeedButton7Click(Sender: TObject);
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
     DM.qContasReceber.Open;
for I := 1 to StrToInt(edParcela.Text) do

begin
  if DM.qContasReceber.RecordCount < I then
     DM.qContasReceber.Insert
  else
     DM.qContasReceber.Append;
     DM.qContasReceber.FieldByName('COD_CLIENTE').Value      := DBEdit1.Text;
     DM.qContasReceber.FieldByName('NOME').Value             := DBEdit2.Text;
     DM.qContasReceber.FieldByName('ENDERECO').Value         := DBEdit3.Text;
     DM.qContasReceber.FieldByName('SITUACAO').Value         := 'A PAGAR';
     DM.qContasReceber.FieldByName('PARCELA').Value          := i;
     DM.qContasReceber.FieldByName('VALOR_REC_PAGAR').Value  := edtValor.Text;
     DM.qContasReceber.FieldByName('VALOR_REC_PAGO').Value   := 'R$ 0,00';
     DM.qContasReceber.FieldByName('DATA_VENCIMENTO').Value  := INCMONTH( DATE, I - 1);
     DM.qContasReceber.FieldByName('TIPO').Value             := 'RECEITA';
     DM.qContasReceber.FieldByName('CONTA_PLANO').Value      := 'RECEB. DE MENSALIDADE';
     DM.qContasReceber.FieldByName('HISTORICO').Value        := FORMATDATETIME('"MENSALIDADE DO MÊS" MMMM"/"YYYY',INCMONTH( DATE, I - 1));
     DM.qContasReceber.ApplyUpdates;
     DM.qContasReceber.Next;
  end;
     DM.qContasReceber.ApplyUpdates;
     Showmessage('Mensalidades Geradas com Sucesso!');
end;
end;

procedure TFRM_CadPacientes.SpeedButton8Click(Sender: TObject);
begin
  if DM.qContasReceberSITUACAO.Text = 'PAGO' then
     begin
       ShowMessage ('Você não pode apagar um Pagamento Realizado' +#13+
                    'Entre em contato com o Suporte!');
     end
   else
     begin
  if Application.MessageBox('Apagar Registro?',
   'Apagar', 4 + MB_ICONWARNING)= idno then abort else
   DM.qContasReceber.Delete;
   DM.qContasReceber.ApplyUpdates;
end;
end;

procedure TFRM_CadPacientes.btnIncluirClick(Sender: TObject);
begin
    DM.qAlunos.Append;
    DM.qAlunos.FieldByName('DATA_CADASTRO').Value := DatetoStr(now);
    DM.qAlunos.FieldByName('TIPO').Value          := 'NORMAL';
    DBEdit1.SetFocus;
    DM.qAlunosSITUACAO.text                       := 'ATIVO';
    dm.qAlunos.FieldByName('OBS').Text            := '      '
end;

procedure TFRM_CadPacientes.SpeedButton9Click(Sender: TObject);
begin
    DM.qAlunos.Close;
    DM.qAlunos.Open;
    Close;
end;
end.

