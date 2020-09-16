unit U_CadPlanoContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DB, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls;

type
  TFRM_CadPlanoContas = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    dsPlanoContas: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_CadPlanoContas: TFRM_CadPlanoContas;

implementation

uses U_DM;

{$R *.dfm}

procedure TFRM_CadPlanoContas.BitBtn2Click(Sender: TObject);
begin
    if Application.MessageBox('Cancelar operação?',
    'Cancelar operação?', 4 + MB_ICONWARNING)= idno then abort else
    DM.qPlanoContas.Cancel;
    Close;
end;
procedure TFRM_CadPlanoContas.BitBtn3Click(Sender: TObject);
begin
   Close;
end;
procedure TFRM_CadPlanoContas.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if HiWord(GetKeyState(VK_SHIFT)) <> 0 then
      SelectNext(Sender as TWinControl,False,True)
    else
      SelectNext(Sender as TWinControl,True,True);
    Key := #0;
  end;
end;

procedure TFRM_CadPlanoContas.FormCreate(Sender: TObject);
begin
   FRM_CadPlanoContas.Caption := Application.Title + FRM_CadPlanoContas.Caption;
end;

procedure TFRM_CadPlanoContas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key= #13 then
    begin
      perform(cm_dialogkey,vk_tab,0);
      key:=#0;
    end;
  if key= #27 then
      close;
end;

procedure TFRM_CadPlanoContas.SpeedButton1Click(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    begin
     ShowMessage('Você não preencheu a Descrição!');
     Exit;
    end
  else
  if Application.MessageBox('Cadastrar nova Conta?',
      'Cadastrar Conta?', 4 + MB_ICONWARNING)= idno then abort else
       DM.qPlanoContas.ApplyUpdates;
       Close;
  end;

procedure TFRM_CadPlanoContas.SpeedButton2Click(Sender: TObject);
begin
    if Application.MessageBox('Cancelar operação?',
    'Cancelar operação?', 4 + MB_ICONWARNING)= idno then abort else
    DM.qPlanoContas.Cancel;
    Close;
end;

procedure TFRM_CadPlanoContas.SpeedButton3Click(Sender: TObject);
begin
   Close;
end;

end.
