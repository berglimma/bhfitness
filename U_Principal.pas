unit U_Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, XPMan, ComCtrls, Menus, jpeg, ExtDlgs, IniFiles,
  DB, DBCtrls, AppEvnts, Registry, StdCtrls, ToolWin, ActnMan, ActnCtrls,
  ImgList, PlatformDefaultStyleActnCtrls, ActnList, BandActn, ActnMenus;

type
  TFRM_Principal = class(TForm)
    xpMan: TXPManifest;
    StatusBar1: TStatusBar;
    ApplicationEvents1: TApplicationEvents;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Panel1: TPanel;
    btnAlunos: TSpeedButton;
    btnFornecedores: TSpeedButton;
    btnContasPagar: TSpeedButton;
    btnFluxoCaixa: TSpeedButton;
    btnContasReceber: TSpeedButton;
    SpeedButton1: TSpeedButton;
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Cadastros1: TMenuItem;
    SpeedButton2: TSpeedButton;
    DBImage1: TDBImage;
    Configuraes1: TMenuItem;
    Sobre1: TMenuItem;
    Sobre2: TMenuItem;
    bh: TBalloonHint;
    btnBackup: TSpeedButton;
    Pacientes1: TMenuItem;
    ListaResumida1: TMenuItem;
    Cadastros2: TMenuItem;
    N1: TMenuItem;
    AniversariantesdoMs1: TMenuItem;
    PlanodeContas1: TMenuItem;
    Usurios1: TMenuItem;
    Modalidades1: TMenuItem;
    Modalidades2: TMenuItem;
    Matrculas1: TMenuItem;
    PorAlunos1: TMenuItem;
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnFornecedoresClick(Sender: TObject);
    procedure Alunos1Click(Sender: TObject);
    procedure ContasReceber2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Alunos2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure Action1Execute(Sender: TObject);
    procedure btnAlunosClick(Sender: TObject);
    procedure btnContasPagarClick(Sender: TObject);
    procedure btnContasReceberClick(Sender: TObject);
    procedure btnFluxoCaixaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Sobre2Click(Sender: TObject);
    procedure Configuraes1Click(Sender: TObject);
    procedure btnBackupClick(Sender: TObject);
    procedure ListaCompleta1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure AniversariantesdoMs1Click(Sender: TObject);
    procedure PlanodeContas1Click(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
    procedure ListaResumida1Click(Sender: TObject);
    procedure Instituio1Click(Sender: TObject);
    procedure Modalidades1Click(Sender: TObject);
    procedure Modalidades2Click(Sender: TObject);
    procedure PorAlunos1Click(Sender: TObject);
   private
    { Private declarations }
  public
    { Public declarations }
      iniconf:Tinifile;
  end;

var
  FRM_Principal: TFRM_Principal;


implementation

uses U_ContasReceber, U_Relatorios, U_Splash, U_Login,
  U_Sobre, U_VisaoGeral, U_DM, U_ContasPagar, U_PlanoContas, U_FluxoCaixa,
  U_CadFornecedor, U_Empresa, U_Backup, U_Pacientes, U_Aniversariantes, U_PacientesGeral, U_FornecedoresGeral,
  U_ImpPaciente, U_CadUsuarios, U_AlunosGeral, U_Modalidade,
  U_RelAlunosModalidades;
{$R *.dfm}

procedure TFRM_Principal.Action1Execute(Sender: TObject);
begin
   Application.CreateForm(TFRM_Sobre, FRM_Sobre);
   FRM_Sobre.ShowModal;
end;

procedure TFRM_Principal.Alunos1Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_CadPacientes, FRM_CadPacientes);
   FRM_CadPacientes.ShowModal;
end;

procedure TFRM_Principal.Alunos2Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_Relatorio, FRM_Relatorio);
   FRM_Relatorio.RelAlunos.Print;
end;

procedure TFRM_Principal.AniversariantesdoMs1Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_Aniversariantes, FRM_Aniversariantes);
   FRM_Aniversariantes.Showmodal;
end;

procedure TFRM_Principal.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
var
  NomeDoLog: string;
  Arquivo: TextFile;
begin
  NomeDoLog := ChangeFileExt(Application.Exename, '.log');
  AssignFile(Arquivo, NomeDoLog);
  if FileExists(NomeDoLog) then
    Append(arquivo) { se existir, apenas adiciona linhas }
  else
    ReWrite(arquivo); { cria um novo se não existir }
  try
    WriteLn(arquivo, DateTimeToStr(Now) + ':' + E.Message);
    WriteLn(arquivo, '----------------------------------------------------------------------');
    Application.ShowException(E);
  finally
    CloseFile(arquivo)
  end;
end;


procedure TFRM_Principal.Configuraes1Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_CadEmpresa, FRM_CadEmpresa);
   FRM_CadEmpresa.ShowModal;
end;

procedure TFRM_Principal.ContasReceber2Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_ContasReceber, FRM_ContasReceber);
   FRM_ContasReceber.ShowModal;
end;

procedure TFRM_Principal.FormActivate(Sender: TObject);
begin
    FRM_Login.Close;
end;

procedure TFRM_Principal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if Application.MessageBox('Deseja sair do Sistema?',
      'Sair do Sistema?', 4 + MB_ICONWARNING)= idno then abort else
      Application.Terminate;
end;

procedure TFRM_Principal.FormCreate(Sender: TObject);
begin
    FRM_Principal.Caption     := Application.Title + FRM_Principal.Caption;
    StatusBar1.Panels[0].Text := Application.Title;
    StatusBar1.Panels[2].Text := FRM_Login.edLogin.Text;
    StatusBar1.Panels[3].Text := FRM_Login.StatusBar1.Panels[0].Text;
end;

procedure TFRM_Principal.Instituio1Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_CadEmpresa, FRM_CadEmpresa);
   FRM_CadEmpresa.ShowModal;
end;

procedure TFRM_Principal.ListaCompleta1Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_ImpPaciente, FRM_ImpPaciente);
   FRM_ImpPaciente.ShowModal;
end;

procedure TFRM_Principal.ListaResumida1Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_ImpPaciente, FRM_ImpPaciente);
   FRM_ImpPaciente.ShowModal;
end;

procedure TFRM_Principal.Modalidades1Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_Modalidades, FRM_Modalidades);
   FRM_Modalidades.ShowModal;
end;

procedure TFRM_Principal.Modalidades2Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_Relatorio, FRM_Relatorio);
   FRM_Relatorio.RelModalidades.DeviceType := 'Screen';
   FRM_Relatorio.RelModalidades.Print;
end;

procedure TFRM_Principal.PlanodeContas1Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_PlanoContas, FRM_PlanoContas);
   FRM_PlanoContas.ShowModal;
end;

procedure TFRM_Principal.PorAlunos1Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_RelAlunosModalidades, FRM_RelAlunosModalidades);
   FRM_RelAlunosModalidades.ShowModal;
end;

procedure TFRM_Principal.btnFluxoCaixaClick(Sender: TObject);
begin
  try
   Application.CreateForm(TFRM_FluxoCaixa, FRM_FluxoCaixa);
   FRM_FluxoCaixa.ShowModal;
  finally
    FRM_FluxoCaixa.Free;
    DM.qFluxo.Active := False;
end;
end;

procedure TFRM_Principal.btnContasReceberClick(Sender: TObject);
begin
  try
   Application.CreateForm(TFRM_ContasReceber, FRM_ContasReceber);
   FRM_ContasReceber.ShowModal;
  finally
    FRM_ContasReceber.Free;
    DM.BuscaContasReceber.Active := False;
    DM.qContasReceber.Active     := False;
  end;
end;

procedure TFRM_Principal.Sobre2Click(Sender: TObject);
begin
    Application.CreateForm(TFRM_Sobre, FRM_Sobre);
    FRM_Sobre.ShowModal;
end;

procedure TFRM_Principal.SpeedButton1Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_VisaoGeral, FRM_VisaoGeral);
   FRM_VisaoGeral.ShowModal;
end;

procedure TFRM_Principal.SpeedButton2Click(Sender: TObject);
begin
   Close;
end;

procedure TFRM_Principal.Usurios1Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_CadUsuarios, FRM_CadUsuarios);
   FRM_CadUsuarios.ShowModal;
end;

procedure TFRM_Principal.btnAlunosClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFRM_AlunosGeral, FRM_AlunosGeral);
    DM.qAlunos.Active := True;
    FRM_AlunosGeral.ShowModal;
  finally
    FRM_AlunosGeral.Free;
    DM.qAlunos.Active := False;
end;
end;

procedure TFRM_Principal.btnBackupClick(Sender: TObject);
begin
   Application.CreateForm(TFRM_Backup, FRM_Backup);
   FRM_Backup.ShowModal;
end;

procedure TFRM_Principal.btnFornecedoresClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFRM_FornecedoresGeral, FRM_FornecedoresGeral);
    DM.qContasPagarFornecedor.Active := True;
    FRM_FornecedoresGeral.ShowModal;
  finally
    FRM_FornecedoresGeral.Free;
    DM.qContasPagarFornecedor.Active := False;
  end;
end;
procedure TFRM_Principal.btnContasPagarClick(Sender: TObject);
begin
  try
     Application.CreateForm(TFRM_ContasPagar, FRM_ContasPagar);
     FRM_ContasPagar.ShowModal;
  finally
     FRM_ContasPagar.Close;
     DM.qContasPagar.Close;
  end;
end;

end.
