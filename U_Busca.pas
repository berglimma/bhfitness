unit U_Busca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB;

type
  TFRM_Busca = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edbusca: TEdit;
    SpeedButton1: TSpeedButton;
    BtnReceber: TSpeedButton;
    lblNaoEncontrado: TLabel;
    DBGrid1: TDBGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure edbuscaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnReceberClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumn);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_Busca: TFRM_Busca;

implementation

uses U_DM, U_ContasReceber, U_CadContasReceber;

{$R *.dfm}

procedure TFRM_Busca.BitBtn1Click(Sender: TObject);
begin
 Close;
end;

procedure TFRM_Busca.BtnReceberClick(Sender: TObject);
begin
   Close
end;

procedure TFRM_Busca.DBGrid1CellClick(Column: TColumn);
begin
   FRM_CadContasReceber.edNomeAluno.Text        := DM.qAlunos.FieldByName('NOME').Text;
   FRM_CadContasReceber.edEnderecoAluno.Text    := DM.qAlunos.FieldByName('CIDADE').Text;
end;

procedure TFRM_Busca.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  ShowScrollBar(DBGrid1.Handle,SB_HORZ,False);
end;

procedure TFRM_Busca.edbuscaChange(Sender: TObject);
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

procedure TFRM_Busca.FormCreate(Sender: TObject);
begin
   FRM_Busca.Caption  := Application.Title + FRM_Busca.Caption;
end;

procedure TFRM_Busca.FormShow(Sender: TObject);
begin
   edbusca.SetFocus;
end;


procedure TFRM_Busca.SpeedButton1Click(Sender: TObject);
begin
   Close;
end;

procedure TFRM_Busca.SpeedButton2Click(Sender: TObject);
begin
  Close;
end;

end.
