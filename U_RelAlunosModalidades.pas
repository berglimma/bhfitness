unit U_RelAlunosModalidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, pngimage, DBCtrls, Grids, DBGrids;

type
  TFRM_RelAlunosModalidades = class(TForm)
    Image1: TImage;
    Label9: TLabel;
    Label1: TLabel;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    GroupBox1: TGroupBox;
    rgTipoImpressao: TRadioGroup;
    Panel2: TPanel;
    cbModalidades: TDBLookupComboBox;
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_RelAlunosModalidades: TFRM_RelAlunosModalidades;

implementation

uses U_DM, U_Relatorios;

{$R *.dfm}

procedure TFRM_RelAlunosModalidades.FormCreate(Sender: TObject);
begin
   FRM_RelAlunosModalidades.Caption := Application.Title + FRM_RelAlunosModalidades.Caption;
end;

procedure TFRM_RelAlunosModalidades.SpeedButton1Click(Sender: TObject);
begin
   Close;
end;

procedure TFRM_RelAlunosModalidades.SpeedButton2Click(Sender: TObject);
begin
if cbModalidades.Text = '' then
 begin
   ShowMessage('Selecione a Situação!');
   abort
end
 else
    DM.qMatriculas.Close;
    DM.qMatriculas.SQL.Clear;
    DM.qMatriculas.SQL.Add('select * from MATRICULA');
    DM.qMatriculas.SQL.Add('where MODALIDADE like'+''''+cbModalidades.Text+'%'+'''order By ALUNO_NOME');
    DM.qMatriculas.Open;
    Application.CreateForm(TFRM_Relatorio, FRM_Relatorio);
    FRM_Relatorio.RelAlunosModalidades.DeviceType := 'Screen';
    FRM_Relatorio.RelAlunosModalidades.Print;
end;
end.
