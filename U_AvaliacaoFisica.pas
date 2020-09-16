unit U_AvaliacaoFisica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DBCtrls, pngimage, ExtCtrls, Mask, Buttons,
  Grids, DBGrids, DB, ExtDlgs, Clipbrd;

type
  TFRM_AvaliacaoFisica = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBImage1: TDBImage;
    Image1: TImage;
    PageControl2: TPageControl;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    Image2: TImage;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBMemo1: TDBMemo;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    PageControl3: TPageControl;
    TabSheet11: TTabSheet;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Shape1: TShape;
    Label33: TLabel;
    Label34: TLabel;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    DBComboBox4: TDBComboBox;
    DBComboBox5: TDBComboBox;
    DBComboBox6: TDBComboBox;
    DBComboBox7: TDBComboBox;
    DBComboBox8: TDBComboBox;
    Image3: TImage;
    Image4: TImage;
    Label35: TLabel;
    Image9: TImage;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    lblResultado: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    DBComboBox9: TDBComboBox;
    Image10: TImage;
    PageControl4: TPageControl;
    TabSheet12: TTabSheet;
    TabSheet13: TTabSheet;
    Label64: TLabel;
    Label65: TLabel;
    Panel25: TPanel;
    Label66: TLabel;
    Label67: TLabel;
    Panel26: TPanel;
    Panel27: TPanel;
    Image11: TImage;
    Label68: TLabel;
    Image12: TImage;
    Label69: TLabel;
    Panel28: TPanel;
    Image13: TImage;
    Label70: TLabel;
    Panel29: TPanel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    dbPostural1: TDBImage;
    dbPostural2: TDBImage;
    dbPostural3: TDBImage;
    DBEdit36: TDBEdit;
    edPeso: TDBEdit;
    edAltura: TDBEdit;
    dbIMC: TDBEdit;
    edIMCIdeal: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    Label82: TLabel;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    edFlexibilidade: TDBEdit;
    DBEdit6: TDBEdit;
    dbNomeAvaliado: TDBEdit;
    dbEnderecoAvaliado: TDBEdit;
    dbBairroAvaliado: TDBEdit;
    dbFoneAvaliado: TDBEdit;
    dbNascimentoAvaliado: TDBEdit;
    dbCepAvaliado: TDBEdit;
    dbCelularAvaliado: TDBEdit;
    dbIdadeAvaliado: TDBEdit;
    DBEdit59: TDBEdit;
    SpeedButton1: TSpeedButton;
    Procurar: TSpeedButton;
    WebCam: TSpeedButton;
    Excluir: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Panel30: TPanel;
    Panel31: TPanel;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    ScrollBox1: TScrollBox;
    Label37: TLabel;
    Label38: TLabel;
    Panel8: TPanel;
    DBEdit7: TDBEdit;
    Panel9: TPanel;
    DBEdit8: TDBEdit;
    Panel10: TPanel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Panel11: TPanel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Panel12: TPanel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    Panel13: TPanel;
    DBEdit15: TDBEdit;
    Panel14: TPanel;
    DBEdit16: TDBEdit;
    Panel15: TPanel;
    DBEdit17: TDBEdit;
    Panel16: TPanel;
    DBEdit18: TDBEdit;
    Panel17: TPanel;
    DBEdit19: TDBEdit;
    Panel18: TPanel;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    Panel19: TPanel;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    Panel20: TPanel;
    DBEdit24: TDBEdit;
    Panel21: TPanel;
    Image5: TImage;
    DBEdit25: TDBEdit;
    Panel22: TPanel;
    Image6: TImage;
    DBEdit26: TDBEdit;
    Panel23: TPanel;
    Image7: TImage;
    DBEdit27: TDBEdit;
    Panel24: TPanel;
    Image8: TImage;
    DBEdit28: TDBEdit;
    DBComboBox10: TDBComboBox;
    DBComboBox11: TDBComboBox;
    DBComboBox12: TDBComboBox;
    DBComboBox13: TDBComboBox;
    DBComboBox14: TDBComboBox;
    DBComboBox15: TDBComboBox;
    DBComboBox16: TDBComboBox;
    Label36: TLabel;
    Label61: TLabel;
    Label74: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    OpenPictureDialog1: TOpenPictureDialog;
    OpenPictureDialog2: TOpenPictureDialog;
    OpenPictureDialog3: TOpenPictureDialog;
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBComboBox9Change(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ProcurarClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure WebCamClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_AvaliacaoFisica: TFRM_AvaliacaoFisica;

implementation

uses U_AjudaDiametro, U_DM, U_Postural1, U_Postural2, U_Postural3;

{$R *.dfm}

procedure TFRM_AvaliacaoFisica.BitBtn15Click(Sender: TObject);
begin
   Close;
end;

procedure TFRM_AvaliacaoFisica.DBComboBox9Change(Sender: TObject);
begin
if DBComboBox9.Text = 'POLLOCK - 3 DOBRAS' then
  begin
    Label47.Enabled  := False;
    Label48.Enabled  := False;
    Label49.Enabled  := False;
    Label50.Enabled  := False;
    Label51.Enabled  := False;
    Label52.Enabled  := True;
    Label53.Enabled  := True;
    Label54.Enabled  := True;
    Label55.Enabled  := False;
    DBEdit42.Enabled := False;
    DBEdit43.Enabled := False;
    DBEdit44.Enabled := False;
    DBEdit45.Enabled := False;
    DBEdit46.Enabled := False;
    DBEdit47.Enabled := True;
    DBEdit48.Enabled := True;
    DBEdit49.Enabled := True;
    DBEdit50.Enabled := False;
  end
else
  begin
if DBComboBox9.Text = 'POLLOCK - 7 DOBRAS' then
  begin
    Label47.Enabled  := True;
    Label48.Enabled  := False;
    Label49.Enabled  := True;
    Label50.Enabled  := True;
    Label51.Enabled  := True;
    Label52.Enabled  := True;
    Label53.Enabled  := True;
    Label54.Enabled  := True;
    Label55.Enabled  := False;
    DBEdit42.Enabled := True;
    DBEdit43.Enabled := False;
    DBEdit44.Enabled := True;
    DBEdit45.Enabled := True;
    DBEdit46.Enabled := True;
    DBEdit47.Enabled := True;
    DBEdit48.Enabled := True;
    DBEdit49.Enabled := True;
    DBEdit50.Enabled := False;
  end
else
  begin
if DBComboBox9.Text = 'FAULKNER - 4 DOBRAS' then
   begin
    Label47.Enabled  := True;
    Label48.Enabled  := False;
    Label49.Enabled  := True;
    Label50.Enabled  := False;
    Label51.Enabled  := True;
    Label52.Enabled  := False;
    Label53.Enabled  := True;
    Label54.Enabled  := False;
    Label55.Enabled  := False;
    DBEdit42.Enabled := True;
    DBEdit43.Enabled := False;
    DBEdit44.Enabled := True;
    DBEdit45.Enabled := False;
    DBEdit46.Enabled := True;
    DBEdit47.Enabled := False;
    DBEdit48.Enabled := True;
    DBEdit49.Enabled := False;
    DBEdit50.Enabled := False;
  end
else
  begin
if DBComboBox9.Text = 'YUHASZ - 6 DOBRAS' then
  begin
    Label47.Enabled  := True;
    Label48.Enabled  := False;
    Label49.Enabled  := True;
    Label50.Enabled  := False;
    Label51.Enabled  := True;
    Label52.Enabled  := True;
    Label53.Enabled  := True;
    Label54.Enabled  := True;
    Label55.Enabled  := False;
    DBEdit42.Enabled := True;
    DBEdit43.Enabled := False;
    DBEdit44.Enabled := True;
    DBEdit45.Enabled := False;
    DBEdit46.Enabled := True;
    DBEdit47.Enabled := True;
    DBEdit48.Enabled := True;
    DBEdit49.Enabled := True;
    DBEdit50.Enabled := False;
  end
else
  begin
if DBComboBox9.Text = 'BIOIMPEDÂNCIA' then
    Label47.Enabled  := False;
    Label48.Enabled  := False;
    Label49.Enabled  := False;
    Label50.Enabled  := False;
    Label51.Enabled  := False;
    Label52.Enabled  := False;
    Label53.Enabled  := False;
    Label54.Enabled  := False;
    Label55.Enabled  := False;
    DBEdit42.Enabled := False;
    DBEdit43.Enabled := False;
    DBEdit44.Enabled := False;
    DBEdit45.Enabled := False;
    DBEdit46.Enabled := False;
    DBEdit47.Enabled := False;
    DBEdit48.Enabled := False;
    DBEdit49.Enabled := False;
    DBEdit50.Enabled := False;
  end;
end;
end;
end;
end;

procedure TFRM_AvaliacaoFisica.FormCreate(Sender: TObject);
begin
  FRM_AvaliacaoFisica.Caption := Application.Title + FRM_AvaliacaoFisica.Caption;
end;

procedure TFRM_AvaliacaoFisica.Image5Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_AjudaDiametro, FRM_AjudaDiametro);
   FRM_AjudaDiametro.Image1.Visible    := True;
   FRM_AjudaDiametro.Memo1.Visible     := True;
   FRM_AjudaDiametro.lbltitulo.Visible := True;
   FRM_AjudaDiametro.ShowModal;
end;

procedure TFRM_AvaliacaoFisica.Image6Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_AjudaDiametro, FRM_AjudaDiametro);
   FRM_AjudaDiametro.Image2.Visible    := True;
   FRM_AjudaDiametro.Memo2.Visible     := True;
   FRM_AjudaDiametro.lbltitulo2.Visible:= True;
   FRM_AjudaDiametro.ShowModal;
end;

procedure TFRM_AvaliacaoFisica.Image7Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_AjudaDiametro, FRM_AjudaDiametro);
   FRM_AjudaDiametro.Image3.Visible    := True;
   FRM_AjudaDiametro.Memo3.Visible     := True;
   FRM_AjudaDiametro.lbltitulo3.Visible:= True;
   FRM_AjudaDiametro.ShowModal;
end;

procedure TFRM_AvaliacaoFisica.Image8Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_AjudaDiametro, FRM_AjudaDiametro);
   FRM_AjudaDiametro.Image4.Visible    := True;
   FRM_AjudaDiametro.Memo4.Visible     := True;
   FRM_AjudaDiametro.lbltitulo4.Visible:= True;
   FRM_AjudaDiametro.ShowModal;
end;

procedure TFRM_AvaliacaoFisica.ProcurarClick(Sender: TObject);
var
    imagem : tPicture;
begin
  if OpenPictureDialog1.Execute then
    begin
      imagem := tPicture.create();
      imagem.LoadFromFile(OpenPictureDialog1.FileName);
      clipboard.Assign(imagem);
      dbPostural1.PasteFromClipboard;
      imagem.Free;
    end;

end;

procedure TFRM_AvaliacaoFisica.SpeedButton1Click(Sender: TObject);
var
  A,B,C,E : Real;
  D : String;
  Code1 : Integer;
  Code2 : Integer;
begin
   Val (edPeso.Text,A,Code1);
   Val (edAltura.Text,B,Code2);
if edPeso.Text = '' then ShowMessage ('A altura não foi digitada!');
if edAltura.Text = '' then ShowMessage ('O peso não foi digitado!');
       C:=0;
       E:=(A/100);
   if (A>0) and (B>0) then
       C := (B/(E*E)) ;
       Str(C:8:2,D);
       Label3.Caption := D;
   if (C>0) then
       dbIMC.Text           := Label3.Caption;
   if (C=0) then
       lblResultado.Caption := 'Tente outra vez';
   if (C<=12)and (C>0) then
     begin
       lblResultado.Caption := 'Segundo o IMC, você está na Situação de "Desnutrição crônica"';
       edIMCIdeal.Text      := 'Abaixo de 12'
     end;
   if (C>12) and (C<=18.4) then
     begin
       lblResultado.Caption := 'Segundo o IMC, você está na Situação de "Desnutrição"';
       edIMCIdeal.Text      := 'de 12 a 18.4'
     end;
   if (C>=18.5) and (C<20) then
     begin
       lblResultado.Caption := 'Segundo o IMC, você está na Situação "Baixo Peso"';
       edIMCIdeal.Text      := 'de 18.5 a 20'
     end;
   if (C>=20) and (C<=25) then
     begin
       lblResultado.Caption := 'Segundo o IMC, você está na Situação "Normal"';
       edIMCIdeal.Text      := 'de 20 a 25'
     end;
   if (C>25) and (C<30) then
     begin
       lblResultado.Caption := 'Segundo o IMC, você está na Situação de "Sobre peso"';
       edIMCIdeal.Text      := '25 a 30'
     end;
   if (C>=30) then
     begin
       lblResultado.Caption := 'Segundo o IMC, você está na Situação "Obeso"';
       edIMCIdeal.Text      := 'Acima de 30'
     end;
   if (C>=30) and (C<=34.9) then
     begin
       lblResultado.Caption := 'Segundo o IMC, você está na Situação "Obeso grau 1"';
       edIMCIdeal.Text      := 'de 30 a 34.9'
     end;
   if (C>34.9) and (C<=39.9) then
     begin
       lblResultado.Caption := 'Segundo o IMC, você está na Situação "Obeso grau 2"';
       edIMCIdeal.Text      := 'de 34.9 a 39.9'
     end;
   if (C>=40) then
     begin
       lblResultado.Caption := 'Segundo o IMC, você está na Situação "Obeso grau 3 (Obesidade mórbida)"';
       edIMCIdeal.Text      := 'Acima de 40'
     end;
end;

procedure TFRM_AvaliacaoFisica.SpeedButton3Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_CapturaPostural2, FRM_CapturaPostural2);
   FRM_CapturaPostural2.ShowModal;
end;

procedure TFRM_AvaliacaoFisica.SpeedButton4Click(Sender: TObject);
var
    imagem : tPicture;
begin
  if OpenPictureDialog2.Execute then
    begin
      imagem := tPicture.create();
      imagem.LoadFromFile(OpenPictureDialog2.FileName);
      clipboard.Assign(imagem);
      dbPostural2.PasteFromClipboard;
      imagem.Free;
    end;
end;

procedure TFRM_AvaliacaoFisica.SpeedButton6Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_CapturaPostural3, FRM_CapturaPostural3);
   FRM_CapturaPostural3.ShowModal;
end;

procedure TFRM_AvaliacaoFisica.SpeedButton7Click(Sender: TObject);
var
    imagem : tPicture;
begin
  if OpenPictureDialog2.Execute then
    begin
      imagem := tPicture.create();
      imagem.LoadFromFile(OpenPictureDialog2.FileName);
      clipboard.Assign(imagem);
      dbPostural3.PasteFromClipboard;
      imagem.Free;
    end;
end;

procedure TFRM_AvaliacaoFisica.SpeedButton8Click(Sender: TObject);
begin
   DM.qAvaliacao.ApplyUpdates;
end;

procedure TFRM_AvaliacaoFisica.SpeedButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFRM_AvaliacaoFisica.TabSheet3Show(Sender: TObject);
begin
  if DM.qAvaliacao.FieldByName('RISCO_9_NUMERO').Text = '' then
     DM.qAvaliacao.FieldByName('RISCO_9_NUMERO').Text := '0';
end;
procedure TFRM_AvaliacaoFisica.WebCamClick(Sender: TObject);
begin
   Application.CreateForm(TFRM_CapturaPostural1, FRM_CapturaPostural1);
   FRM_CapturaPostural1.ShowModal;
end;

end.
