unit U_AvaliacaoFisicaCadastradas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, pngimage, DBCtrls;

type
  TFRM_AvaFisicaCadastradas = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Panel2: TPanel;
    procedure GravarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_AvaFisicaCadastradas: TFRM_AvaFisicaCadastradas;

implementation

uses U_AvaliacaoFisica, U_DM, U_Alunos;

{$R *.dfm}

procedure TFRM_AvaFisicaCadastradas.FormCreate(Sender: TObject);
begin
  FRM_AvaFisicaCadastradas.Caption := Application.Title + FRM_AvaFisicaCadastradas.Caption;
end;

procedure TFRM_AvaFisicaCadastradas.GravarClick(Sender: TObject);
begin
   Close;
end;

procedure TFRM_AvaFisicaCadastradas.SpeedButton1Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_AvaliacaoFisica, FRM_AvaliacaoFisica);
   DM.qAvaliacao.Append;
   FRM_AvaliacaoFisica.DBEdit6.Text              := FRM_CadAlunos.DBEdit1.Text;
   FRM_AvaliacaoFisica.dbNomeAvaliado.Text       := FRM_CadAlunos.DBEdit2.Text;
   FRM_AvaliacaoFisica.dbEnderecoAvaliado.Text   := FRM_CadAlunos.DBEdit3.Text;
   FRM_AvaliacaoFisica.dbBairroAvaliado.Text     := FRM_CadAlunos.DBEdit4.Text;
   FRM_AvaliacaoFisica.dbCepAvaliado.Text        := FRM_CadAlunos.DBEdit5.Text;
   FRM_AvaliacaoFisica.dbFoneAvaliado.Text       := FRM_CadAlunos.DBEdit8.Text;
   FRM_AvaliacaoFisica.dbCelularAvaliado.Text    := FRM_CadAlunos.DBEdit9.Text;
   FRM_AvaliacaoFisica.dbNascimentoAvaliado.Text := FRM_CadAlunos.DBEdit10.Text;
   FRM_AvaliacaoFisica.dbIdadeAvaliado.Text      := FRM_CadAlunos.DBEdit15.Text;
   FRM_AvaliacaoFisica.ShowModal;
end;

procedure TFRM_AvaFisicaCadastradas.SpeedButton2Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_AvaliacaoFisica, FRM_AvaliacaoFisica);
   DM.qAvaliacao.Edit;
   FRM_AvaliacaoFisica.ShowModal;
end;

procedure TFRM_AvaFisicaCadastradas.SpeedButton3Click(Sender: TObject);
begin
if Application.MessageBox('Apagar Registro?',
   'Apagar', 4 + MB_ICONWARNING)= idno then abort else
   DM.qAvaliacao.Delete;
   DM.qAvaliacao.ApplyUpdates;
end;

procedure TFRM_AvaFisicaCadastradas.SpeedButton4Click(Sender: TObject);
begin
   Close;
end;

end.
