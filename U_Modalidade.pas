unit U_Modalidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, Mask, DBCtrls, ComCtrls;

type
  TFRM_Modalidades = class(TForm)
    Panel1: TPanel;
    dsModalidades: TDataSource;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label5: TLabel;
    Panel2: TPanel;
    BtnIncluir: TSpeedButton;
    BtnExcluir: TSpeedButton;
    BtnGravar: TSpeedButton;
    BtnCancelar: TSpeedButton;
    SpeedButton5: TSpeedButton;
    DBNavigator1: TDBNavigator;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure dsModalidadesStateChange(Sender: TObject);
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_Modalidades: TFRM_Modalidades;

implementation

uses U_DM;

{$R *.dfm}

procedure TFRM_Modalidades.BitBtn2Click(Sender: TObject);
begin
   DM.qModalidades.ApplyUpdates;
end;

procedure TFRM_Modalidades.BitBtn4Click(Sender: TObject);
begin
   Close;
end;

procedure TFRM_Modalidades.BitBtn5Click(Sender: TObject);
begin
   DM.qModalidades.Append;
end;

procedure TFRM_Modalidades.BtnCancelarClick(Sender: TObject);
begin
   DM.qModalidades.Cancel;
end;

procedure TFRM_Modalidades.BtnExcluirClick(Sender: TObject);
begin
   DM.qModalidades.Delete;
end;

procedure TFRM_Modalidades.BtnGravarClick(Sender: TObject);
begin
   DM.qModalidades.FieldByName('VALOR').Value := FormatFloat('###,##0.00', StrtoFloat(DBEdit3.Text));
   DM.qModalidades.ApplyUpdates
end;

procedure TFRM_Modalidades.BtnIncluirClick(Sender: TObject);
begin
   DM.qModalidades.Append;
end;

procedure TFRM_Modalidades.dsModalidadesStateChange(Sender: TObject);
begin
    btnIncluir.Enabled  :=  DM.qModalidades.State = dsBrowse;
    btnExcluir.Enabled  :=  DM.qModalidades.State = dsBrowse;
    btnGravar.Enabled   := (DM.qModalidades.State = dsEdit) or (DM.qModalidades.State = dsInsert);
    btnCancelar.Enabled := (DM.qModalidades.State = dsEdit) or (DM.qModalidades.State = dsInsert);
end;

procedure TFRM_Modalidades.FormCreate(Sender: TObject);
begin
   FRM_Modalidades.Caption := Application.Title + FRM_Modalidades.Caption;
end;

procedure TFRM_Modalidades.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key= #13 then
    begin
      perform(cm_dialogkey,vk_tab,0);
      key:=#0;
    end;
  if key= #27 then
      close;
end;

procedure TFRM_Modalidades.SpeedButton5Click(Sender: TObject);
begin
   Close;
end;

end.
