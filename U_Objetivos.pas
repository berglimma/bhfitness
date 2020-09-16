unit U_Objetivos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, DB, StdCtrls, Mask, DBCtrls, Buttons, Grids,
  DBGrids;

type
  TFRM_Objetivos = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_Objetivos: TFRM_Objetivos;

implementation

uses U_DM;

{$R *.dfm}

procedure TFRM_Objetivos.BitBtn1Click(Sender: TObject);
begin
   DM.qObjetivo.ApplyUpdates;
end;

procedure TFRM_Objetivos.BitBtn2Click(Sender: TObject);
begin
   DM.qObjetivo.Cancel;
   Close;
end;

procedure TFRM_Objetivos.BitBtn3Click(Sender: TObject);
begin
   DM.qObjetivo.Append;
end;

procedure TFRM_Objetivos.BitBtn4Click(Sender: TObject);
begin
   DM.qObjetivo.Delete;
   DM.qObjetivo.ApplyUpdates;
end;

procedure TFRM_Objetivos.FormActivate(Sender: TObject);
begin
   DBEdit2.SetFocus;
end;

procedure TFRM_Objetivos.FormCreate(Sender: TObject);
begin
   FRM_Objetivos.Caption := Application.Title + FRM_Objetivos.Caption;
end;

end.
