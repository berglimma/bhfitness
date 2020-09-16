unit U_CadExercicio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DBCtrls, Mask, Buttons, ExtCtrls, pngimage,
  OleCtrls;

type
  TFRM_CadExercicio = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBMemo1: TDBMemo;
    pn1: TPanel;
    btnIncluir: TSpeedButton;
    btnGravar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnExcluir: TSpeedButton;
    SpeedButton5: TSpeedButton;
    pn2: TPanel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_CadExercicio: TFRM_CadExercicio;

implementation

uses U_DM;

{$R *.dfm}

procedure TFRM_CadExercicio.BitBtn1Click(Sender: TObject);
begin
   DM.qExercicios.Append;
end;

procedure TFRM_CadExercicio.BitBtn2Click(Sender: TObject);
begin
   Close;
end;

procedure TFRM_CadExercicio.BitBtn3Click(Sender: TObject);
begin
   DM.qExercicios.ApplyUpdates;
end;

procedure TFRM_CadExercicio.BitBtn4Click(Sender: TObject);
begin
   DM.qExercicios.Cancel;
end;

procedure TFRM_CadExercicio.BitBtn5Click(Sender: TObject);
begin
   DM.qExercicios.Delete;
end;

procedure TFRM_CadExercicio.btnIncluirClick(Sender: TObject);
begin
   DM.qExercicios.Append;
end;

procedure TFRM_CadExercicio.FormCreate(Sender: TObject);
begin
   FRM_CadExercicio.Caption := Application.Title + FRM_CadExercicio.Caption;
end;

procedure TFRM_CadExercicio.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key= #13 then
    begin
      perform(cm_dialogkey,vk_tab,0);
      key:=#0;
    end;
  if key= #27 then
      close;
end;

procedure TFRM_CadExercicio.btnGravarClick(Sender: TObject);
begin
   DM.qExercicios.ApplyUpdates;
end;

procedure TFRM_CadExercicio.btnCancelarClick(Sender: TObject);
begin
   DM.qExercicios.Cancel;
end;

procedure TFRM_CadExercicio.btnExcluirClick(Sender: TObject);
begin
   DM.qExercicios.Delete;
end;

procedure TFRM_CadExercicio.SpeedButton5Click(Sender: TObject);
begin
   Close;
end;

end.
