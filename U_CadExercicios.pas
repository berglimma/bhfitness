unit U_CadExercicios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, pngimage;

type
  TFRM_Exercicios = class(TForm)
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Panel4: TPanel;
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_Exercicios: TFRM_Exercicios;

implementation

uses U_CadExercicio, U_DM;

{$R *.dfm}

procedure TFRM_Exercicios.BitBtn2Click(Sender: TObject);
begin
   Close;
end;

procedure TFRM_Exercicios.FormCreate(Sender: TObject);
begin
   FRM_Exercicios.Caption := Application.Title + FRM_Exercicios.Caption;
end;

procedure TFRM_Exercicios.SpeedButton1Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_CadExercicio, FRM_CadExercicio);
   FRM_CadExercicio.ShowModal;
end;
procedure TFRM_Exercicios.SpeedButton2Click(Sender: TObject);
begin
   Close;
end;

procedure TFRM_Exercicios.SpeedButton3Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_CadExercicio, FRM_CadExercicio);
   DM.qExercicios.Edit;
   FRM_CadExercicio.ShowModal;

end;

end.
