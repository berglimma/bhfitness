unit U_RelRecebimentoAluno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Buttons, ComCtrls, StdCtrls, Mask, DBCtrls, ExtCtrls, pngimage;

type
  TFRM_RecebimentoAluno = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    dbMatricula: TDBText;
    dbNome: TDBText;
    dbEndereco: TDBText;
    DBValor: TDBText;
    Label8: TLabel;
    Image2: TImage;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBImage1: TDBImage;
    cbFormas: TDBComboBox;
    Panel1: TPanel;
    edTipo: TDBEdit;
    Panel2: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Panel3: TPanel;
    DBDataVencimento: TDateTimePicker;
    dtRecebimento: TDateTimePicker;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_RecebimentoAluno: TFRM_RecebimentoAluno;

implementation

uses U_DM, U_RelRecebimento;

{$R *.dfm}

procedure TFRM_RecebimentoAluno.FormCreate(Sender: TObject);
begin
   FRM_RecebimentoAluno.Caption := Application.Title + FRM_RecebimentoAluno.Caption;
end;

procedure TFRM_RecebimentoAluno.SpeedButton1Click(Sender: TObject);
begin
   DM.qContasReceber.Cancel;
   Close;
end;

procedure TFRM_RecebimentoAluno.SpeedButton2Click(Sender: TObject);
begin
 if cbFormas.Text = '' then
     begin
       ShowMessage('Selecione uma Forma de Recebimento!');
       cbFormas.SetFocus;
     end
   else
       DM.qContasReceber.FieldByName('SITUACAO').Value         := 'PAGO';
       DM.qContasReceber.FieldByName('TIPO').Value             := 'RECEITA';
       DM.qContasReceber.FieldByName('DATA_RECEBIMENTO').Value := dtRecebimento.Date;
       DM.qContasReceber.FieldByName('VALOR_REC_PAGO').Value   := DM.qContasReceber.FieldByName('VALOR_REC_PAGAR').Value;
       DM.qContasReceber.FieldByName('VALOR_REC_PAGAR').Value  := 'R$ 0,00';
       DM.qContasReceber.ApplyUpdates;
       FRM_RecebimentoAluno.Close;
end;
end.
