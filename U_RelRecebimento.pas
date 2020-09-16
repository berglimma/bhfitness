unit U_RelRecebimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Grids, DBGrids, ExtCtrls, DB, StdCtrls, Mask, pngimage,
  Buttons, ComCtrls;

type
  TFRM_Receber = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    DBImage1: TDBImage;
    Label5: TLabel;
    Label4: TLabel;
    dbNome: TDBText;
    dbEndereco: TDBText;
    DBValor: TDBText;
    Label8: TLabel;
    cbFormas: TDBComboBox;
    Image2: TImage;
    Panel1: TPanel;
    Label6: TLabel;
    edTipo: TDBEdit;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    DBDataVencimento: TDateTimePicker;
    dtRecebimento: TDateTimePicker;
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_Receber: TFRM_Receber;

implementation

uses U_DM;

{$R *.dfm}

procedure TFRM_Receber.BitBtn2Click(Sender: TObject);
begin
   Close;
end;
procedure TFRM_Receber.FormCreate(Sender: TObject);
begin
   FRM_Receber.Caption := Application.Title + FRM_Receber.Caption;
end;

procedure TFRM_Receber.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key= #13 then
    begin
      perform(cm_dialogkey,vk_tab,0);
      key:=#0;
    end;
  if key= #27 then
      close;
end;

procedure TFRM_Receber.SpeedButton1Click(Sender: TObject);
begin
   Close;
end;

procedure TFRM_Receber.SpeedButton2Click(Sender: TObject);
begin
 if cbFormas.Text = '' then
    begin
       ShowMessage('Selecione uma Forma de Recebimento!');
       Exit;
       cbFormas.SetFocus;
    end
   else
       DM.BuscaContasReceber.Edit;
       DM.BuscaContasReceber.FieldByName('SITUACAO').Value         := 'PAGO';
       DM.BuscaContasReceber.FieldByName('TIPO').Value             := 'RECEITA';
       DM.BuscaContasReceber.FieldByName('DATA_RECEBIMENTO').Value := dtRecebimento.Date;
       DM.BuscaContasReceber.FieldByName('VALOR_REC_PAGO').Value   := DM.BuscaContasReceber.FieldByName('VALOR_REC_PAGAR').Value;
       DM.BuscaContasReceber.FieldByName('VALOR_REC_PAGAR').Value  := 'R$ 0,00';
       DM.BuscaContasReceber.ApplyUpdates;
       FRM_Receber.Close;
end;
end.
