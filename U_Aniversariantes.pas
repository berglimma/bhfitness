unit U_Aniversariantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, pngimage, ComCtrls, dateUtils,
  Spin;

type
  TFRM_Aniversariantes = class(TForm)
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    Image1: TImage;
    Label1: TLabel;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    cbMes: TSpinEdit;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure cbMesChange(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_Aniversariantes: TFRM_Aniversariantes;

implementation

uses U_DM, U_Relatorios;

{$R *.dfm}

procedure TFRM_Aniversariantes.cbMesChange(Sender: TObject);
begin
    DM.qAniversariantes.Close;
    DM.qAniversariantes.SQL.Clear;
    DM.qAniversariantes.SQL.Add('Select * from ALUNO');
    DM.qAniversariantes.SQL.Add('where extract(month from Data_Nasc) = :Mes order by NOME');
    DM.qAniversariantes.ParamByName('Mes').AsInteger := StrToInt(cbMes.Text);
    DM.qAniversariantes.Open;
end;

procedure TFRM_Aniversariantes.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   ShowScrollBar(DBGrid1.Handle,SB_HORZ,False);
end;

procedure TFRM_Aniversariantes.FormCreate(Sender: TObject);
begin
   FRM_Aniversariantes.Caption := Application.Title + FRM_Aniversariantes.Caption;
end;

procedure TFRM_Aniversariantes.SpeedButton1Click(Sender: TObject);
begin
   Close;
end;
procedure TFRM_Aniversariantes.SpeedButton3Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_Relatorio, FRM_Relatorio);
   FRM_Relatorio.RelAniversariantes.DeviceType := 'Screen';
   FRM_Relatorio.RelAniversariantes.Print;
end;

end.


