unit U_Empresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, Mask, DBCtrls, jpeg,Clipbrd, ExtDlgs,
  ComCtrls;

type
  TFRM_CadEmpresa = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    imgDestino: TDBImage;
    OpenPictureDialog1: TOpenPictureDialog;
    Panel2: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_CadEmpresa: TFRM_CadEmpresa;

implementation

uses U_DM;

{$R *.dfm}

procedure TFRM_CadEmpresa.BitBtn3Click(Sender: TObject);
begin
   Dm.qAcademia.Cancel;
end;

procedure TFRM_CadEmpresa.BitBtn5Click(Sender: TObject);
var img : Tjpegimage;
begin
  img:= Tjpegimage.Create;
  openpicturedialog1.Execute;
  img.LoadFromFile(openpicturedialog1.FileName);
  img.DIBNeeded;
  clipboard.assign(img);
  imgDestino.pastefromclipboard;
  img.free;
end;

procedure TFRM_CadEmpresa.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if HiWord(GetKeyState(VK_SHIFT)) <> 0 then
      SelectNext(Sender as TWinControl,False,True)
    else
      SelectNext(Sender as TWinControl,True,True);
    Key := #0;
  end;
end;

procedure TFRM_CadEmpresa.FormCreate(Sender: TObject);
begin
   FRM_CadEmpresa.Caption := Application.Title + FRM_CadEmpresa.Caption;
end;

procedure TFRM_CadEmpresa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key= #13 then
    begin
      perform(cm_dialogkey,vk_tab,0);
      key:=#0;
    end;
  if key= #27 then
      close;
end;

procedure TFRM_CadEmpresa.SpeedButton1Click(Sender: TObject);
var
  img : Tjpegimage;
begin
  img:= Tjpegimage.Create;
  openpicturedialog1.Execute;
  img.LoadFromFile(openpicturedialog1.FileName);
  img.DIBNeeded;
  clipboard.assign(img);
  imgDestino.pastefromclipboard;
  img.free;
end;

procedure TFRM_CadEmpresa.SpeedButton2Click(Sender: TObject);
begin
   DM.qAcademia.Edit;
end;

procedure TFRM_CadEmpresa.SpeedButton3Click(Sender: TObject);
begin
  if DBEdit2.Text = '' then
    begin
     ShowMessage('Preencha o Nome da Empresa!');
     DBEdit2.SetFocus;
     Abort;
    end;
  if DBEdit4.Text = '' then
    begin
     ShowMessage('Obrigatório preencher o Endereço da Empresa!');
     DBEdit4.SetFocus;
     Abort;
    end;
  if DBEdit5.Text = '' then
    begin
     ShowMessage('Obrigatório preencher o N°!');
     DBEdit5.SetFocus;
     Abort;
    end;
  if DBEdit8.Text = '' then
    begin
     ShowMessage('Obrigatório preencher o CEP da Empresa!');
     DBEdit8.SetFocus;
     Abort;
    end;
  if DBEdit7.Text = '' then
    begin
     ShowMessage('Obrigatório preencher o Bairro!');
     DBEdit7.SetFocus;
     Abort;
    end;
  if DBEdit9.Text = '' then
    begin
     ShowMessage('Obrigatório preencher o Bairro!');
     DBEdit9.SetFocus;
     Abort;
    end;
  if DBCombobox1.Text = '' then
    begin
     ShowMessage('Obrigatório preencher a UF!');
     DBCombobox1.SetFocus;
     Abort;
    end;
  if DBEdit3.Text = '' then
    begin
     ShowMessage('Obrigatório preencher o Telefone!');
     DBEdit3.SetFocus;
     Abort;
    end
else
   DM.qAcademia.ApplyUpdates;
end;

procedure TFRM_CadEmpresa.SpeedButton4Click(Sender: TObject);
begin
   Dm.qAcademia.Cancel;
end;

procedure TFRM_CadEmpresa.SpeedButton5Click(Sender: TObject);
begin
   Close;
end;

end.


