unit U_ReciboMensalidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, Mask, DBCtrls;

type
  TFRM_ReciboMensalidade = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Panel3: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    DBImage1: TDBImage;
    DataSource2: TDataSource;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DataSource2DataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_ReciboMensalidade: TFRM_ReciboMensalidade;

implementation

uses U_Relatorios, U_DM;

{$R *.dfm}

procedure TFRM_ReciboMensalidade.DataSource2DataChange(Sender: TObject;
  Field: TField);
begin
   DM.qContasPagar.RecNo;
end;

procedure TFRM_ReciboMensalidade.FormCreate(Sender: TObject);
begin
   FRM_ReciboMensalidade.Caption := Application.Title + FRM_ReciboMensalidade.Caption;
end;

procedure TFRM_ReciboMensalidade.SpeedButton1Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_Relatorio, FRM_Relatorio);
   FRM_Relatorio.RelReciboMensalidade.Print;
end;

procedure TFRM_ReciboMensalidade.SpeedButton3Click(Sender: TObject);
begin
   Close;
end;

end.
