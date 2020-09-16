unit U_VisaoGeral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, DB, DBCtrls, Grids, DBGrids, Mask,
  IBCustomDataSet, IBQuery;

type
  TFRM_VisaoGeral = class(TForm)
    PageControl1: TPageControl;
    ts1: TTabSheet;
    DBImage1: TDBImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dsVisaoGeral: TDataSource;
    edAlunosAtivos: TEdit;
    edAniversariantes: TEdit;
    DBText1: TDBText;
    SpeedButton1: TSpeedButton;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    DBGrid1: TDBGrid;
    edUltimoBackup: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_VisaoGeral: TFRM_VisaoGeral;

implementation

uses U_DM, U_RealizarPagamento;

{$R *.dfm}

procedure TFRM_VisaoGeral.BitBtn1Click(Sender: TObject);
begin
   Close;
end;
procedure TFRM_VisaoGeral.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  ShowScrollBar(DBGrid1.Handle,SB_HORZ,False);
end;

procedure TFRM_VisaoGeral.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  ShowScrollBar(DBGrid2.Handle,SB_HORZ,False);
end;

procedure TFRM_VisaoGeral.FormCreate(Sender: TObject);
begin
   DM.qContasPagarVisaoGeral.Close;
   DM.qContasPagarVisaoGeral.Open;
   DM.qContasReceberVisaoGeral.Close;
   DM.qContasReceberVisaoGeral.Open;
   edUltimoBackup.Text := DM.qConfigGeralDATA_BACKUP.Text;
end;

procedure TFRM_VisaoGeral.SpeedButton1Click(Sender: TObject);
begin
   Close;
end;

end.
