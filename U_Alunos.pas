unit U_Alunos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, DBCtrls, DB,  ComCtrls, ExtDlgs, DBGrids,
  pngimage, IBCustomDataSet, IBUpdateSQL, IBQuery, jpeg, IdBaseComponent,
  Mask, Grids, Clipbrd, VideoDisp;

type
  TFRM_CadAlunos = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    tbDados: TTabSheet;
    PageControl2: TPageControl;
    Situação: TTabSheet;
    GroupBox1: TGroupBox;
    tbPagamentos: TTabSheet;
    tbAdicionais: TTabSheet;
    Label22: TLabel;
    Label23: TLabel;
    Image1: TImage;
    Image3: TImage;
    Label1: TLabel;
    DBEdit1: TDBEdit;
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
    tbMatriculas: TTabSheet;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Image2: TImage;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit16: TDBEdit;
    dbDebitoAluno: TDBEdit;
    Label24: TLabel;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBEdit22: TDBEdit;
    dsContasReceber: TDataSource;
    dsMatriculas: TDataSource;
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
    SpeedButton1: TSpeedButton;
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
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    GroupBox6: TGroupBox;
    Label37: TLabel;
    Label38: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    DBMemo1: TDBMemo;
    Label34: TLabel;
    DBEdit7: TDBEdit;
    dsAlunos: TDataSource;
    DBNavigator2: TDBNavigator;
    dbFoto: TDBImage;
    procedure BitBtn4Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure dsAlunosStateChange(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
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
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_CadAlunos: TFRM_CadAlunos;

implementation

uses U_DM, U_ContasReceber, U_CadContasReceber, U_RelRecebimento, U_Matricula,
  U_AvaliacaoFisica, U_FichaTreino, U_Busca, U_BloqueiaMatricula,
  U_AvaliacaoFisicaCadastradas, U_ReciboMensalidade, U_RelRecebimentoAluno,
  U_CapturaWebCam;

{$R *.dfm}
procedure TFRM_CadAlunos.BitBtn6Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_CadContasReceber, FRM_CadContasReceber);
   DM.qContasReceber.Append;
   FRM_CadContasReceber.dbData.text          := datetostr(now);
   FRM_CadContasReceber.edCodigoAluno.Text   := FRM_CadAlunos.DBEdit1.Text;
   FRM_CadContasReceber.edNomeAluno.Text     := FRM_CadAlunos.DBEdit2.Text;
   FRM_CadContasReceber.edenderecoAluno.Text := FRM_CadAlunos.DBEdit3.Text;
   FRM_CadcontasReceber.edDescricao.Text     := formatdatetime('"MENSALIDADE DO MES" MMMM"/"YYYY',NOW);
   DM.qContasReceberVALOR_REC_PAGAR.Text     := DM.qModalidadesVALOR.Text;
   FRM_CadContasReceber.ShowModal;
end;

procedure TFRM_CadAlunos.BitBtn7Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_BloqueiaMatricula, FRM_BloqueiaMatricula);
   DM.qMatriculas.Edit;
   DM.qMatriculasDATA_FIM.Text  := datetostr(now);
   FRM_BloqueiaMatricula.showModal;
end;

procedure TFRM_CadAlunos.BitBtn8Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_CadContasReceber, FRM_CadContasReceber);
   FRM_CadContasReceber.edDescricao.Enabled := True;
   FRM_CadContasReceber.DBEdit7.Enabled     := True;
   DM.qContasReceber.Edit;
   FRM_CadContasReceber.ShowModal;
end;

procedure TFRM_CadAlunos.BitBtn9Click(Sender: TObject);
begin
  if Application.MessageBox('Apagar Registro?',
   'Apagar', 4 + MB_ICONWARNING)= idno then abort else
   DM.qContasReceber.Delete;
   DM.qContasReceber.ApplyUpdates;
end;

procedure TFRM_CadAlunos.btnCancelarClick(Sender: TObject);
begin
   DM.qAlunos.Cancel;
end;

procedure TFRM_CadAlunos.btnExcluirClick(Sender: TObject);
begin
if DM.qContasReceber.RecordCount <> 0  then
 begin
      ShowMessage ('Conta não pode ser Excluída, pois contém relacionamentos!');
      abort;
    end
 else
if DM.qMatriculas.RecordCount    <> 0  then
    begin
      ShowMessage ('Matrícula não pode ser Excluída, pois contém relacionamentos!');
      abort;
    end
 else
 begin
    if Application.MessageBox('Apagar Registro?',
       'Apagar', 4 + MB_ICONWARNING)= idno then abort else
      DM.qAlunos.Delete;
      DM.qAlunos.ApplyUpdates;
    end;
end;

procedure TFRM_CadAlunos.btnGravarClick(Sender: TObject);
begin
 if Application.MessageBox('Salvar informações?',
   'Salvar', 4 + MB_ICONWARNING)= idno then abort else
    DM.qAlunos.ApplyUpdates;
end;

procedure TFRM_CadAlunos.BitBtn12Click(Sender: TObject);
begin
    Application.CreateForm(TFRM_Receber, FRM_Receber);
    DM.qContasReceber.Edit;
    FRM_Receber.ShowModal;
end;

procedure TFRM_CadAlunos.BitBtn16Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_AvaFisicaCadastradas, FRM_AvaFisicaCadastradas);
   FRM_AvaFisicaCadastradas.ShowModal;
end;

procedure TFRM_CadAlunos.BitBtn17Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_FichaTreino, FRM_FichaTreino);
   FRM_FichaTreino.ShowModal;
end;

procedure TFRM_CadAlunos.BitBtn1Click(Sender: TObject);
begin
    DM.qAlunos.Edit;
end;

procedure TFRM_CadAlunos.BitBtn2Click(Sender: TObject);
begin
    Application.CreateForm(TFRM_Matricula, FRM_Matricula);
    DM.qMatriculas.Append;
    FRM_Matricula.dbeCodMatricula.Text := FRM_CadAlunos.DBEdit1.Text;
    FRM_Matricula.DBEdit5.Text         := FRM_CadAlunos.dbedit2.Text;
    FRM_Matricula.data.Text            := datetostr(now);
    FRM_Matricula.DBMemo1.Text         := '.';
    FRM_Matricula.ShowModal;
end;

procedure TFRM_CadAlunos.BitBtn3Click(Sender: TObject);
begin
    Application.CreateForm(TFRM_Matricula, FRM_Matricula);
    DM.qMatriculas.Edit;
    FRM_Matricula.ShowModal;
end;

procedure TFRM_CadAlunos.BitBtn4Click(Sender: TObject);
begin
   Close;
end;

procedure TFRM_CadAlunos.BitBtn5Click(Sender: TObject);
begin
    DM.qMatriculasSITUACAO.Text := 'INATIVA';
    DM.qAlunosSITUACAO.Text     := 'INATIVO';
    DM.qMatriculas.Delete;
    DM.qMatriculas.ApplyUpdates;
end;

procedure TFRM_CadAlunos.DBEdit1Exit(Sender: TObject);
begin
  DBEdit1.Text := FormatFloat('0000',StrToFloat(DBEdit1.Text));
end;

procedure TFRM_CadAlunos.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  ShowScrollBar(DBGrid2.Handle,SB_HORZ,False);
    if DM.qMatriculasSITUACAO.Text = 'INATIVA' then
       DBGrid1.Canvas.Brush.Color := clRed
  else
    DBGrid1.Canvas.Brush.Color := clBlue;
    DBGrid1.Canvas.FillRect(Rect);
    dbgrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
 end;

 procedure TFRM_CadAlunos.DBGrid2DrawColumnCell(Sender: TObject;
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

procedure TFRM_CadAlunos.dsAlunosStateChange(Sender: TObject);
begin
    btnIncluir.Enabled  :=  DM.qAlunos.State = dsBrowse;
    btnExcluir.Enabled  :=  DM.qAlunos.State = dsBrowse;
    btnGravar.Enabled   := (DM.qAlunos.State = dsEdit) or (DM.qAlunos.State = dsInsert);
    btnCancelar.Enabled := (DM.qAlunos.State = dsEdit) or (DM.qAlunos.State = dsInsert);
end;
procedure TFRM_CadAlunos.FormActivate(Sender: TObject);
begin
   FRM_CadAlunos.Caption := Application.Title + FRM_CadAlunos.Caption;
   DBEdit1.SetFocus;
end;

procedure TFRM_CadAlunos.FormShow(Sender: TObject);
begin
   EdtData.Date := NOW;
   Edit1.Text  := 'Total de Alunos: ' + IntTostr(DM.qAlunos.RecordCount);
   tbAdicionais.Visible := False;
end;

procedure TFRM_CadAlunos.PageControl1Change(Sender: TObject);
begin
if DM.qAlunosSITUACAO.Text = 'INATIVO' then
    begin
      PageControl1.Pages[1].Enabled := False;
      PageControl1.Pages[2].Enabled := False;
    end
else
    begin
      PageControl1.Pages[1].Enabled := True;
      PageControl1.Pages[2].Enabled := True;
    end;
end;

procedure TFRM_CadAlunos.SpeedButton10Click(Sender: TObject);
begin
   if DM.qContasReceberSITUACAO.Text = 'A PAGAR' then
      begin
        ShowMessage('Você só pode gerar Recibo de uma parcela Paga!');
        Abort;
      end
   else
      begin
        Application.CreateForm(TFRM_ReciboMensalidade, FRM_ReciboMensalidade);
        FRM_ReciboMensalidade.ShowModal;
      end;
end;

procedure TFRM_CadAlunos.SpeedButton11Click(Sender: TObject);
begin
    Application.CreateForm(TFRM_CadContasReceber, FRM_CadContasReceber);
    FRM_CadContasReceber.BtnLancar.Visible     := False;
    FRM_CadContasReceber.edDescricao.Enabled   := False;
    FRM_CadContasReceber.dbData.Enabled        := False;
    FRM_CadContasReceber.DBEdit7.Enabled       := False;
    FRM_CadContasReceber.ShowModal;
end;

procedure TFRM_CadAlunos.SpeedButton12Click(Sender: TObject);
begin
    Application.CreateForm(TFRM_RecebimentoAluno, FRM_RecebimentoAluno);
    DM.qContasReceber.Edit;
    DM.qContasReceberTIPO.Text := 'RECEITA';
    FRM_RecebimentoAluno.dtRecebimento.date    := Now;
    FRM_RecebimentoAluno.ShowModal;
end;

procedure TFRM_CadAlunos.SpeedButton13Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_AvaFisicaCadastradas, FRM_AvaFisicaCadastradas);
   FRM_AvaFisicaCadastradas.ShowModal;
end;

procedure TFRM_CadAlunos.SpeedButton14Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_FichaTreino, FRM_FichaTreino);
   FRM_FichaTreino.ShowModal;
end;

procedure TFRM_CadAlunos.SpeedButton15Click(Sender: TObject);
begin
    Application.CreateForm(TFRM_Matricula, FRM_Matricula);
    DM.qAlunos.Edit;
    DM.qMatriculas.Insert;
    FRM_Matricula.dbeCodMatricula.Text := FRM_CadAlunos.DBEdit1.Text;
    FRM_Matricula.DBEdit5.Text         := FRM_CadAlunos.dbedit2.Text;
    FRM_Matricula.data.Text            := datetostr(now);
    FRM_Matricula.ShowModal;
end;

procedure TFRM_CadAlunos.SpeedButton16Click(Sender: TObject);
begin
    Application.CreateForm(TFRM_Matricula, FRM_Matricula);
    DM.qAlunos.Edit;
    DM.qMatriculas.Edit;
    FRM_Matricula.ShowModal;
end;

procedure TFRM_CadAlunos.SpeedButton17Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_BloqueiaMatricula, FRM_BloqueiaMatricula);
   DM.qAlunos.Edit;
   DM.qMatriculas.Edit;
   DM.qMatriculasDATA_FIM.Text  := datetostr(now);
   FRM_BloqueiaMatricula.showModal;
end;

procedure TFRM_CadAlunos.SpeedButton18Click(Sender: TObject);
begin
   DM.qMatriculasSITUACAO.Text := 'INATIVA';
   DM.qAlunos.Edit;
   DM.qAlunosSITUACAO.Text     := 'INATIVO';
   DM.qMatriculas.Delete;
   DM.qMatriculas.ApplyUpdates;
end;

procedure TFRM_CadAlunos.SpeedButton1Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_Busca, FRM_Busca);
   FRM_Busca.ShowModal;
end;

procedure TFRM_CadAlunos.SpeedButton2Click(Sender: TObject);
var
    imagem : tPicture;
begin
  if OpenPictureDialog1.Execute then
    begin
      imagem := tPicture.create();
      imagem.LoadFromFile(OpenPictureDialog1.FileName);
      clipboard.Assign(imagem);
      dbFoto.PasteFromClipboard;
      imagem.Free;
    end;
  end;

procedure TFRM_CadAlunos.SpeedButton3Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_CapturaWebCam, FRM_CapturaWebCam);
   FRM_CapturaWebCam.ShowModal;
end;

procedure TFRM_CadAlunos.SpeedButton4Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_CadContasReceber, FRM_CadContasReceber);
   DM.qContasReceber.Append;
   FRM_CadContasReceber.dbData.text                 := datetostr(now);
   FRM_CadContasReceber.edCodigoAluno.Text          := FRM_CadAlunos.DBEdit1.Text;
   FRM_CadContasReceber.edNomeAluno.Text            := FRM_CadAlunos.DBEdit2.Text;
   FRM_CadContasReceber.edenderecoAluno.Text        := FRM_CadAlunos.DBEdit3.Text;
   FRM_CadcontasReceber.edDescricao.Text            := FORMATDATETIME('"RECEB. MENSALIDADE -" MMMM"/"YYYY',INCMONTH( DATE));
   DM.qContasReceber.FieldByName('SITUACAO').Value  := 'A PAGAR';
   DM.qContasReceberVALOR_REC_PAGAR.Text            := DM.qModalidadesVALOR.Text;
   FRM_CadContasReceber.ShowModal;
end;

procedure TFRM_CadAlunos.SpeedButton5Click(Sender: TObject);
begin
if Application.MessageBox('Editar Registro?',
   'Editar', 4 + MB_ICONWARNING)= idno then abort else
  DM.qAlunos.Edit;
end;

procedure TFRM_CadAlunos.SpeedButton6Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_CadContasReceber, FRM_CadContasReceber);
   FRM_CadContasReceber.edDescricao.Enabled := True;
   FRM_CadContasReceber.DBEdit7.Enabled     := True;
   DM.qContasReceber.Edit;
   FRM_CadContasReceber.ShowModal;
end;

procedure TFRM_CadAlunos.SpeedButton7Click(Sender: TObject);
var
  I: integer;
begin
     DM.qContasReceber.Open;
for I := 1 to StrToInt(edParcela.Text) do

begin
  if DM.qContasReceber.RecordCount < I then
     DM.qContasReceber.Insert
  else
     DM.qContasReceber.Insert;
     DM.qContasReceber.FieldByName('COD_ALUNO').Value        := DBEdit1.Text;
     DM.qContasReceber.FieldByName('NOME').Value             := DBEdit2.Text;
     DM.qContasReceber.FieldByName('SERVICO').Value          := FORMATDATETIME('"RECEB. MENSALIDADE -" MMMM"/"YYYY',INCMONTH( DATE, I - 1));
     DM.qContasReceber.FieldByName('ENDERECO').Value         := DBEdit3.Text;
     DM.qContasReceber.FieldByName('SITUACAO').Value         := 'A PAGAR';
     DM.qContasReceber.FieldByName('PARCELA').Value          := i;
     DM.qContasReceber.FieldByName('VALOR_REC_PAGAR').Value  := DM.qModalidadesVALOR.Value;
     DM.qContasReceber.FieldByName('DATA_VENCIMENTO').Value  := INCMONTH( DATE, I - 1);
     DM.qContasReceber.FieldByName('TIPO').Value             := 'RECEITA';
     DM.qContasReceber.FieldByName('CONTA_PLANO').Value      := 'RECEB. MENSALIDADE';
     DM.qContasReceber.FieldByName('CONTA_HISTORICO').Value  := FORMATDATETIME('"RECEB. MENSALIDADE -" MMMM"/"YYYY',INCMONTH( DATE, I - 1));
     DM.qContasReceber.FieldByName('FOTO').Value             := DM.qAlunos.FieldByName('FOTO').Value;
     DM.qContasReceber.ApplyUpdates;
     DM.qContasReceber.Next;
  end;
     DM.qContasReceber.ApplyUpdates;
     Showmessage('Mensalidades Geradas com Sucesso!');
  end;

procedure TFRM_CadAlunos.SpeedButton8Click(Sender: TObject);
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

procedure TFRM_CadAlunos.btnIncluirClick(Sender: TObject);
begin
    DM.qAlunos.Append;
    DBEdit1.SetFocus;
    DM.qAlunosSITUACAO.text                       := 'INATIVO';
    DM.qAlunos.FieldByName('OBS').Text            := '      ';
    DM.qAlunos.FieldByName('DATA_CADASTRO').Value := Now;
end;

procedure TFRM_CadAlunos.SpeedButton9Click(Sender: TObject);
begin
    Close;
end;
end.

