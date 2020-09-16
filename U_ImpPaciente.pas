unit U_ImpPaciente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, pngimage, StdCtrls, DBCtrls, Grids, DBGrids;

type
  TFRM_ImpPaciente = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Image1: TImage;
    Label9: TLabel;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    cbSituacao: TComboBox;
    rgTipoImpressao: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_ImpPaciente: TFRM_ImpPaciente;

implementation

uses U_Relatorios, U_DM;

{$R *.dfm}

procedure TFRM_ImpPaciente.FormCreate(Sender: TObject);
begin
   FRM_ImpPaciente.Caption := Application.Title + FRM_ImpPaciente.Caption;
end;

procedure TFRM_ImpPaciente.SpeedButton1Click(Sender: TObject);
begin
   Close;
end;

procedure TFRM_ImpPaciente.SpeedButton2Click(Sender: TObject);
begin
if cbSituacao.Text = '' then
 begin
   ShowMessage('Selecione a Situação!');
   abort
 end
else
begin
if rgTipoImpressao.ItemIndex = 0 then
 begin
    DM.qAlunos.Close;
    DM.qAlunos.SQL.Clear;
    DM.qAlunos.SQL.Add('select * from ALUNO');
    DM.qAlunos.SQL.Add('where SITUACAO like'+''''+cbSituacao.Text+'%'+'''order By NOME');
    DM.qAlunos.Open;
    Application.CreateForm(TFRM_Relatorio, FRM_Relatorio);
    FRM_Relatorio.RelAlunos.DeviceType := 'Screen';
    FRM_Relatorio.RelAlunos.Print;
    Abort
 end
else
 begin
  if rgTipoImpressao.ItemIndex = 1 then
   begin
    DM.qAlunos.Close;
    DM.qAlunos.SQL.Clear;
    DM.qAlunos.SQL.Add('select * from ALUNO');
    DM.qAlunos.SQL.add('where SITUACAO like'+''''+cbSituacao.Text+'%'+'''order By NOME');
    DM.qAlunos.Open;
    Application.CreateForm(TFRM_Relatorio, FRM_Relatorio);
    FRM_Relatorio.RelPacientesRes.DeviceType := 'Screen';
    FRM_Relatorio.RelPacientesRes.Print;
    Abort
   end
else
 begin
  if rgTipoImpressao.ItemIndex = 2 then
   begin
    DM.qAlunos.Close;
    DM.qAlunos.SQL.Clear;
    DM.qAlunos.SQL.Add('select * from ALUNO');
    DM.qAlunos.SQL.Add('where SITUACAO like'+''''+cbSituacao.Text+'%'+'''order By NOME');
    DM.qAlunos.Open;
    Application.CreateForm(TFRM_Relatorio, FRM_Relatorio);
    FRM_Relatorio.RelEtiqueta.DeviceType := 'Screen';
    FRM_Relatorio.RelEtiqueta.Print;
    Abort
   end
  end;
 end;
end;
end;
end.
