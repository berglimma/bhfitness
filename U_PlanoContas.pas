unit U_PlanoContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, pngimage, ExtCtrls, Grids, DBGrids, Buttons, DB;

type
  TFRM_PlanoContas = class(TForm)
    Panel3: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Image1: TImage;
    Label9: TLabel;
    dsPlanoContas: TDataSource;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    procedure BitBtn6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_PlanoContas: TFRM_PlanoContas;

implementation

uses U_CadPlanoContas, U_DM;

{$R *.dfm}

procedure TFRM_PlanoContas.BitBtn6Click(Sender: TObject);
begin
   Close;
end;

procedure TFRM_PlanoContas.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   ShowScrollBar(DBGrid1.Handle,SB_HORZ,False);
end;

procedure TFRM_PlanoContas.FormCreate(Sender: TObject);
begin
   FRM_PlanoContas.Caption := Application.Title + FRM_PlanoContas.Caption;
end;

procedure TFRM_PlanoContas.SpeedButton1Click(Sender: TObject);
begin
 if Application.MessageBox('Cadastrar nova Conta?',
  'Cadastrar Conta?', 4 + MB_ICONWARNING)= idno then abort else
   Application.CreateForm(TFRM_CadPlanoContas, FRM_CadPlanoContas);
   DM.qPlanoContas.Append;
   FRM_CadPlanoContas.ShowModal;
end;

procedure TFRM_PlanoContas.SpeedButton2Click(Sender: TObject);
begin
  if Application.MessageBox('Alterar Conta?',
  'Alterar Conta?', 4 + MB_ICONWARNING)= idno then abort else
   Application.CreateForm(TFRM_CadPlanoContas, FRM_CadPlanoContas);
   DM.qPlanoContas.Edit;
   FRM_CadPlanoContas.ShowModal;
end;

procedure TFRM_PlanoContas.SpeedButton4Click(Sender: TObject);
begin
  if Application.MessageBox('Excluir esta conta?',
  'Excluindo conta!', 4 + MB_ICONWARNING)= idno then abort else
   DM.qPlanoContas.Delete;
   DM.qPlanoContas.ApplyUpdates;
end;

procedure TFRM_PlanoContas.SpeedButton5Click(Sender: TObject);
begin
   Close;
end;
end.
