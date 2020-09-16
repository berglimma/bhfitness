unit U_BloqueiaMatricula;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, pngimage, ExtCtrls, DBCtrls, Mask, DB, Buttons;

type
  TFRM_BloqueiaMatricula = class(TForm)
    Image1: TImage;
    Label22: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    dsMatriculas: TDataSource;
    Panel1: TPanel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    dbDataFim: TDBEdit;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_BloqueiaMatricula: TFRM_BloqueiaMatricula;

implementation

uses U_DM;

{$R *.dfm}

procedure TFRM_BloqueiaMatricula.BitBtn1Click(Sender: TObject);
begin
   DM.qMatriculasSITUACAO.Text  := 'INATIVA';
   DM.qAlunosSITUACAO.Text      := 'INATIVO';
   DM.qMatriculas.Applyupdates;
   Close;
end;

procedure TFRM_BloqueiaMatricula.BitBtn2Click(Sender: TObject);
begin
   Close;
end;

procedure TFRM_BloqueiaMatricula.FormCreate(Sender: TObject);
begin
   FRM_BloqueiaMatricula.Caption := Application.Title + FRM_BloqueiaMatricula.Caption;
end;

procedure TFRM_BloqueiaMatricula.SpeedButton1Click(Sender: TObject);
begin
   DM.qMatriculasSITUACAO.Text  := 'INATIVA';
   DM.qAlunosSITUACAO.Text      := 'INATIVO';
   DM.qMatriculas.Applyupdates;
   Close;
end;

procedure TFRM_BloqueiaMatricula.SpeedButton2Click(Sender: TObject);
begin
   Close;
end;

end.
