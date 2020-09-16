unit U_AlunosGeral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons, pngimage, DB, DBCtrls;

type
  TFRM_AlunosGeral = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    Label9: TLabel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Panel3: TPanel;
    Panel4: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label4: TLabel;
    edBusca: TEdit;
    Image2: TImage;
    lblNaoEncontrado: TLabel;
    cbListarPacientes: TComboBox;
    TotalPacientes: TEdit;
    TotalPacientesAtivos: TEdit;
    TotalPacientesInativos: TEdit;
    Image1: TImage;
    DBImage1: TDBImage;
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure edBuscaChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cbListarPacientesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_AlunosGeral: TFRM_AlunosGeral;

implementation

uses U_Pacientes, U_DM, U_CadFornecedor, U_Alunos;

{$R *.dfm}

procedure TFRM_AlunosGeral.cbListarPacientesChange(Sender: TObject);
begin
    DM.qAlunos.Close;
    DM.qAlunos.SQL.Clear;
    DM.qAlunos.SQL.Add('select * from ALUNO');
    DM.qAlunos.SQL.Add('where SITUACAO like'+''''+cbListarPacientes.Text+'%'+'''order By NOME');;
    DM.qAlunos.Open;
if  DM.qAlunos.RecordCount > 0 then begin
    DM.qAlunos.First;
while not DM.qAlunos.Eof do
  begin
    lblNaoEncontrado.Visible  := True;
    lblNaoEncontrado.Caption  := 'Total Encontrado:  ' + IntTostr(DM.qAlunos.RecordCount);
    DM.qAlunos.Next;
end;
  end;
end;


procedure TFRM_AlunosGeral.DBGrid1DblClick(Sender: TObject);
begin
   Application.CreateForm(TFRM_CadAlunos, FRM_CadAlunos);
   FRM_CadAlunos.ShowModal;
end;

procedure TFRM_AlunosGeral.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   ShowScrollBar(DBGrid1.Handle,SB_HORZ,False);
end;

procedure TFRM_AlunosGeral.edBuscaChange(Sender: TObject);
begin
with DM.qAlunos do begin
    DM.qAlunos.Open;
    DM.qAlunos.Locate('NOME',edBusca.Text,[ loPartialKey]);
if not DM.qAlunos.Locate('NOME',edBusca.Text,[ loPartialKey]) then
    lblNaoEncontrado.Visible := True
 else
    lblNaoEncontrado.Visible := False
 end;
end;

procedure TFRM_AlunosGeral.FormActivate(Sender: TObject);
begin
   DM.qAlunos.Close;
   DM.qAlunos.SQL.Clear;
   DM.qAlunos.SQL.Add('Select * from ALUNO');
   DM.qAlunos.Open;
end;

procedure TFRM_AlunosGeral.FormCreate(Sender: TObject);
begin
   FRM_CadAlunos.Caption := Application.Title + FRM_CadAlunos.Caption;
   Label7.Caption  := 'Cadastrados: ' + IntTostr(DM.qAlunos.RecordCount);
end;

procedure TFRM_AlunosGeral.SpeedButton1Click(Sender: TObject);
begin
   Close;
end;

procedure TFRM_AlunosGeral.SpeedButton2Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_CadAlunos, FRM_CadAlunos);
   DM.qAlunos.Edit;
   FRM_CadAlunos.ShowModal;
end;

procedure TFRM_AlunosGeral.SpeedButton3Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_CadAlunos, FRM_CadAlunos);
   DM.qAlunos.Delete;
   FRM_CadAlunos.ShowModal;
end;

procedure TFRM_AlunosGeral.SpeedButton5Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_CadAlunos, FRM_CadAlunos);
   DM.qAlunos.Append;
   DM.qAlunos.FieldByName('DATA_CADASTRO').Value := DatetoStr(now);
   DM.qAlunosSITUACAO.text                       := 'ATIVO';
   DM.qAlunos.FieldByName('OBS').Text            := '      ';
   FRM_CadAlunos.ShowModal;
end;
end.
