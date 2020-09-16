unit U_Matricula;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, pngimage, ExtCtrls, DB, Mask, DBCtrls, Buttons,
  IBCustomDataSet, IBQuery, IBUpdateSQL, Grids, DBGrids;

type
  TFRM_Matricula = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    CheckBox1: TCheckBox;
    data: TDBEdit;
    cbPlano: TDBComboBox;
    DBComboBox2: TDBComboBox;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    DiaVencimento: TDBComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    dsModalidades: TDataSource;
    dbeCodMatricula: TDBEdit;
    DBEdit2: TDBEdit;
    Panel2: TPanel;
    Label9: TLabel;
    DBMemo1: TDBMemo;
    edValorDesconto: TDBEdit;
    edValorMatricula: TDBEdit;
    SpeedButton1: TSpeedButton;
    procedure FecharClick(Sender: TObject);
    procedure DBComboBox2Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edValorDescontoChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edValorDescontoExit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_Matricula: TFRM_Matricula;

implementation

uses U_RelRecebimento, U_DM, U_Alunos;

{$R *.dfm}

procedure TFRM_Matricula.DBComboBox2Change(Sender: TObject);
begin
  if DBCombobox2.Text = 'SEM DESCONTO' then
      begin
        DM.qMatriculasVALOR.Value := DM.qModalidades.FieldByName('VALOR').Value;
      end;
  if DBCombobox2.Text = 'DESCONTO POR VALOR' then
      begin
        edValorDesconto.Enabled   := True;
      end;
end;

procedure TFRM_Matricula.edValorDescontoChange(Sender: TObject);
begin
  DM.qMatriculasVALOR.Value := DM.qMatriculasVALOR.Value - DM.qMatriculasVALOR_DESCONTO.Value;
end;

procedure TFRM_Matricula.edValorDescontoExit(Sender: TObject);
begin
      DM.qMatriculas.FieldByName('VALOR').Value :=  DM.qMatriculas.FieldByName('VALOR').Value - DM.qMatriculas.FieldByName('VALOR_DESCONTO').Value;
end;

procedure TFRM_Matricula.FecharClick(Sender: TObject);
begin
   Close;
end;

procedure TFRM_Matricula.FormCreate(Sender: TObject);
begin
   FRM_Matricula.Caption := Application.Title + FRM_Matricula.Caption;
end;

procedure TFRM_Matricula.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key= #13 then
    begin
      perform(cm_dialogkey,vk_tab,0);
      key:=#0;
    end;
  if key= #27 then
      close;
end;

procedure TFRM_Matricula.SpeedButton1Click(Sender: TObject);
begin
   DM.qMatriculasSITUACAO.Text := 'ATIVA';
   DM.qAlunosSITUACAO.Text     := 'ATIVO';
   DM.qMatriculas.ApplyUpdates;
   Close;
end;
end.
