unit U_FichaTreino;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, pngimage, ExtCtrls, Grids, DBGrids, DBCtrls, Buttons;

type
  TFRM_FichaTreino = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    EdBuscaAluno: TEdit;
    edBucaObjetivo: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Panel4: TPanel;
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_FichaTreino: TFRM_FichaTreino;

implementation

uses U_Objetivos, U_DM, U_CadTreino, U_Alunos, U_CadExercicios;

{$R *.dfm}

procedure TFRM_FichaTreino.BitBtn2Click(Sender: TObject);
begin
   Close;
end;

procedure TFRM_FichaTreino.FormCreate(Sender: TObject);
begin
   FRM_FichaTreino.Caption := Application.Title + FRM_FichaTreino.Caption;
end;

procedure TFRM_FichaTreino.SpeedButton1Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_Exercicios,  FRM_Exercicios);
   FRM_Exercicios.ShowModal;
end;

procedure TFRM_FichaTreino.SpeedButton2Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_Objetivos, FRM_Objetivos);
   FRM_Objetivos.ShowModal;
end;

procedure TFRM_FichaTreino.SpeedButton6Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_CadTreino, FRM_CadTreino);
   DM.qFichaTreino.Append;
   DM.qFichaTreinoINICIO_TREINO.Text  := DateToStr(now);
   FRM_CadTreino.edCodigo.Text        := DM.qAlunosCODIGO.Text;
   FRM_CadTreino.edAluno.Text         := FRM_CadAlunos.DBEdit2.text;
   FRM_CadTreino.edCelular.Text       := FRM_CadAlunos.DBEdit9.text;
   FRM_CadTreino.edSexo.Text          := FRM_CadAlunos.DBComboBox1.Text;
   FRM_CadTreino.ShowModal;
end;

procedure TFRM_FichaTreino.SpeedButton7Click(Sender: TObject);
begin
   Close;
end;

procedure TFRM_FichaTreino.SpeedButton8Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_CadTreino, FRM_CadTreino);
   DM.qFichaTreino.Edit;
   FRM_CadTreino.ShowModal;
end;

procedure TFRM_FichaTreino.SpeedButton9Click(Sender: TObject);
begin
if Application.MessageBox('Apagar Registro?',
   'Apagar', 4 + MB_ICONWARNING)= idno then abort else
   DM.qFichaTreino.Delete;
   DM.qFichaTreino.ApplyUpdates;
end;

end.
