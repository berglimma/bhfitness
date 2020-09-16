unit U_CadTreino;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, jpeg, ExtCtrls, Grids, DBGrids, DBCtrls,
  Mask, DB;

type
  TFRM_CadTreino = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBComboBox1: TDBComboBox;
    PageControl1: TPageControl;
    ts1: TTabSheet;
    Ts2: TTabSheet;
    Ts3: TTabSheet;
    Ts4: TTabSheet;
    Ts5: TTabSheet;
    TabSheet11: TTabSheet;
    Label8: TLabel;
    edCodigo: TDBEdit;
    Label9: TLabel;
    edAluno: TDBEdit;
    Label10: TLabel;
    edCelular: TDBEdit;
    Label11: TLabel;
    edSexo: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    GridTreinoA: TDBGrid;
    pgcExerciciosTreinoA: TPageControl;
    TabSheet1: TTabSheet;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit2: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    DBComboBox4: TDBComboBox;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    sbNovo: TSpeedButton;
    sbCancelar: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    dbInicio: TDBEdit;
    DBEdit6: TDBEdit;
    sbGravar: TSpeedButton;
    sbExcluir: TSpeedButton;
    DBGrid1: TDBGrid;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    sbNovoB: TSpeedButton;
    sbCancelarB: TSpeedButton;
    sbGravarB: TSpeedButton;
    sbExcluirB: TSpeedButton;
    DBEdit3: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    DBComboBox5: TDBComboBox;
    DBComboBox6: TDBComboBox;
    DBComboBox7: TDBComboBox;
    DBGrid2: TDBGrid;
    PageControl3: TPageControl;
    TabSheet3: TTabSheet;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    DBEdit4: TDBEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    DBComboBox8: TDBComboBox;
    DBComboBox9: TDBComboBox;
    DBComboBox10: TDBComboBox;
    DBGrid3: TDBGrid;
    PageControl4: TPageControl;
    TabSheet4: TTabSheet;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton21: TSpeedButton;
    DBEdit8: TDBEdit;
    DBLookupComboBox5: TDBLookupComboBox;
    DBComboBox11: TDBComboBox;
    DBComboBox12: TDBComboBox;
    DBComboBox13: TDBComboBox;
    DBGrid4: TDBGrid;
    PageControl5: TPageControl;
    TabSheet5: TTabSheet;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    SpeedButton22: TSpeedButton;
    SpeedButton23: TSpeedButton;
    SpeedButton24: TSpeedButton;
    SpeedButton25: TSpeedButton;
    DBEdit9: TDBEdit;
    DBLookupComboBox6: TDBLookupComboBox;
    DBComboBox14: TDBComboBox;
    DBComboBox15: TDBComboBox;
    DBComboBox16: TDBComboBox;
    DBGrid5: TDBGrid;
    PageControl6: TPageControl;
    TabSheet6: TTabSheet;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    SpeedButton26: TSpeedButton;
    SpeedButton27: TSpeedButton;
    SpeedButton28: TSpeedButton;
    SpeedButton29: TSpeedButton;
    DBEdit10: TDBEdit;
    DBLookupComboBox7: TDBLookupComboBox;
    DBComboBox17: TDBComboBox;
    DBComboBox18: TDBComboBox;
    DBComboBox19: TDBComboBox;
    SpeedButton1: TSpeedButton;
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure sbNovoClick(Sender: TObject);
    procedure sbCancelarClick(Sender: TObject);
    procedure sbGravarClick(Sender: TObject);
    procedure sbExcluirClick(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure sbNovoBClick(Sender: TObject);
    procedure sbGravarBClick(Sender: TObject);
    procedure sbCancelarBClick(Sender: TObject);
    procedure sbExcluirBClick(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure SpeedButton24Click(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
    procedure SpeedButton25Click(Sender: TObject);
    procedure SpeedButton26Click(Sender: TObject);
    procedure SpeedButton28Click(Sender: TObject);
    procedure SpeedButton27Click(Sender: TObject);
    procedure SpeedButton29Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_CadTreino: TFRM_CadTreino;

implementation

uses U_DM, U_Relatorios;

{$R *.dfm}

procedure TFRM_CadTreino.BitBtn2Click(Sender: TObject);
begin
   pgcExerciciosTreinoA.Visible := False;
end;

procedure TFRM_CadTreino.BitBtn5Click(Sender: TObject);
begin
   Close;
end;

procedure TFRM_CadTreino.FormCreate(Sender: TObject);
begin
   FRM_CadTreino.Caption := Application.Title + FRM_CadTreino.Caption;
end;

procedure TFRM_CadTreino.SpeedButton11Click(Sender: TObject);
begin
   DM.qTreinoC.Append;
   DBEdit4.Text := edCodigo.Text;
end;

procedure TFRM_CadTreino.SpeedButton12Click(Sender: TObject);
begin
   DM.qTreinoC.Cancel;
end;

procedure TFRM_CadTreino.SpeedButton13Click(Sender: TObject);
begin
   DM.qTreinoC.ApplyUpdates;
end;

procedure TFRM_CadTreino.SpeedButton14Click(Sender: TObject);
begin
   DM.qTreinoC.Delete;
   DM.qTreinoC.ApplyUpdates;
end;

procedure TFRM_CadTreino.SpeedButton15Click(Sender: TObject);
begin
  DM.qFichaTreino.ApplyUpdates;
end;

procedure TFRM_CadTreino.SpeedButton16Click(Sender: TObject);
begin
   DM.qFichaTreino.Edit;
end;

procedure TFRM_CadTreino.SpeedButton18Click(Sender: TObject);
begin
   DM.qTreinoD.Append;
   DBEdit8.Text := edCodigo.Text;
end;

procedure TFRM_CadTreino.SpeedButton19Click(Sender: TObject);
begin
   DM.qTreinoD.Cancel;
end;

procedure TFRM_CadTreino.SpeedButton1Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_Relatorio, FRM_Relatorio);
   FRM_Relatorio.RelFichaTreino.Print;
end;

procedure TFRM_CadTreino.sbGravarBClick(Sender: TObject);
begin
   DM.qTreinoB.ApplyUpdates
end;

procedure TFRM_CadTreino.sbGravarClick(Sender: TObject);
begin
   DM.qTreinoA.ApplyUpdates;
end;

procedure TFRM_CadTreino.sbExcluirBClick(Sender: TObject);
begin
  DM.qTreinoB.Delete;
  DM.qTreinoB.ApplyUpdates;
end;

procedure TFRM_CadTreino.sbExcluirClick(Sender: TObject);
begin
  Dm.qTreinoA.Delete;
end;

procedure TFRM_CadTreino.SpeedButton20Click(Sender: TObject);
begin
   DM.qTreinoD.ApplyUpdates;
end;

procedure TFRM_CadTreino.SpeedButton21Click(Sender: TObject);
begin
   DM.qTreinoD.Delete;
   DM.qTreinoD.ApplyUpdates;
end;

procedure TFRM_CadTreino.SpeedButton22Click(Sender: TObject);
begin
   DM.qTreinoE.Append;
   DBEdit9.Text := edCodigo.Text;
end;

procedure TFRM_CadTreino.SpeedButton23Click(Sender: TObject);
begin
   DM.qTreinoE.Cancel;
end;

procedure TFRM_CadTreino.SpeedButton24Click(Sender: TObject);
begin
   DM.qTreinoE.ApplyUpdates;
end;

procedure TFRM_CadTreino.SpeedButton25Click(Sender: TObject);
begin
   DM.qTreinoE.Delete;
   DM.qTreinoE.ApplyUpdates;
end;

procedure TFRM_CadTreino.SpeedButton26Click(Sender: TObject);
begin
   DM.qTreinoF.Append;
   DBEdit10.Text := edCodigo.Text;
end;

procedure TFRM_CadTreino.SpeedButton27Click(Sender: TObject);
begin
   DM.qTreinoF.Cancel;
end;

procedure TFRM_CadTreino.SpeedButton28Click(Sender: TObject);
begin
   DM.qTreinoF.ApplyUpdates;
end;

procedure TFRM_CadTreino.SpeedButton29Click(Sender: TObject);
begin
   DM.qTreinoF.Delete;
   DM.qTreinoF.ApplyUpdates;
end;

procedure TFRM_CadTreino.SpeedButton2Click(Sender: TObject);
begin
   DM.qFichaTreino.Cancel;
end;

procedure TFRM_CadTreino.SpeedButton3Click(Sender: TObject);
begin
   DM.qFichaTreino.Delete;
end;

procedure TFRM_CadTreino.SpeedButton4Click(Sender: TObject);
begin
   Close;
end;

procedure TFRM_CadTreino.sbNovoBClick(Sender: TObject);
begin
   DM.qTreinoB.Append;
   DBEdit3.Text := edCodigo.Text;
end;

procedure TFRM_CadTreino.sbNovoClick(Sender: TObject);
begin
   DM.qTreinoA.Append;
   DBEdit2.Text := edCodigo.Text;
end;

procedure TFRM_CadTreino.sbCancelarBClick(Sender: TObject);
begin
    DM.qTreinoB.ApplyUpdates;
end;

procedure TFRM_CadTreino.sbCancelarClick(Sender: TObject);
begin
   DM.qTreinoA.Cancel;
end;

end.
