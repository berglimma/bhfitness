unit U_BuscaFichaTreino;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, pngimage, ExtCtrls;

type
  TFRM_BuscaFichaTreino = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton5: TSpeedButton;
    EdBuscaAluno: TEdit;
    edBucaObjetivo: TEdit;
    Panel2: TPanel;
    SpeedButton7: TSpeedButton;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure EdBuscaAlunoChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_BuscaFichaTreino: TFRM_BuscaFichaTreino;

implementation

uses U_Relatorios, U_DM, U_CadTreino;

{$R *.dfm}

procedure TFRM_BuscaFichaTreino.DBGrid1DblClick(Sender: TObject);
begin
   Application.CreateForm(TFRM_CadTreino, FRM_CadTreino);
   DM.qFichaTreino.RecNo;
   FRM_CadTreino.Showmodal;
end;

procedure TFRM_BuscaFichaTreino.EdBuscaAlunoChange(Sender: TObject);
begin
   DM.BuscaFichaTreino.Close;
   DM.BuscaFichaTreino.SQL.Clear;
   DM.BuscaFichaTreino.SQL.Add('select * from FICHA_TREINO');
   DM.BuscaFichaTreino.SQL.Add('where ALUNO_NOME like'+''''+EdBuscaAluno.Text+'%'+'''');
   DM.BuscaFichaTreino.Open;
 if EdBuscaAluno.text=''then
  begin
   DM.BuscaFichaTreino.Close;
   DM.BuscaFichaTreino.SQL.Clear;
   DM.BuscaFichaTreino.SQL.Add('select * from FICHA_TREINO');
   DM.BuscaFichaTreino.SQL.Add('order by MATRICULA asc');
   DM.BuscaFichaTreino.Open;
end;
end;

procedure TFRM_BuscaFichaTreino.FormActivate(Sender: TObject);
begin
   FRM_BuscaFichaTreino.Caption := Application.Title + FRM_BuscaFichaTreino.Caption;
end;

procedure TFRM_BuscaFichaTreino.SpeedButton1Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_Relatorio, FRM_Relatorio);
   DM.qTreinoA.Active := False;
   DM.qTreinoA.Active := True;
   DM.qTreinoB.Active := False;
   DM.qTreinoB.Active := True;
   DM.qTreinoC.Active := False;
   DM.qTreinoC.Active := True;
   DM.qTreinoD.Active := False;
   DM.qTreinoD.Active := True;
   DM.qTreinoE.Active := False;
   DM.qTreinoE.Active := True;
   DM.qTreinoF.Active := False;
   DM.qTreinoF.Active := True;
   FRM_Relatorio.RelFichaTreino.DeviceType := 'Screen';
   FRM_Relatorio.RelFichaTreino.Print;
end;

procedure TFRM_BuscaFichaTreino.SpeedButton7Click(Sender: TObject);
begin
   Close;
end;

end.
