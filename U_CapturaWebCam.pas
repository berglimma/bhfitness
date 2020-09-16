unit U_CapturaWebCam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, StdCtrls, Videocap, inifiles, ClipBrd,
  Menus, ComCtrls, vfw, mmsystem, Jpeg, ExtDlgs, DBCtrls;

type
  TFRM_CapturaWebCam = class(TForm)
    GroupBox1: TGroupBox;
    cbx_preview: TCheckBox;
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    EditSPict: TEdit;
    VideoCap1: TVideoCap;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cbx_previewClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_CapturaWebCam: TFRM_CapturaWebCam;

  implementation

uses U_DM, U_Alunos;

{$R *.dfm}

procedure TFRM_CapturaWebCam.cbx_previewClick(Sender: TObject);
begin
   VideoCap1.VideoPreview := cbx_preview.Checked;
end;

procedure TFRM_CapturaWebCam.FormActivate(Sender: TObject);
begin
  FRM_CapturaWebCam.Caption := Application.Title + FRM_CapturaWebCam.Caption;
end;

procedure TFRM_CapturaWebCam.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   VideoCap1.DriverOpen := False;
end;

procedure TFRM_CapturaWebCam.FormShow(Sender: TObject);
begin
   VideoCap1.DriverOpen := True;
end;

procedure TFRM_CapturaWebCam.SpeedButton4Click(Sender: TObject);
Var BMP : TBitMap;
    JPG : TJpegImage;
begin
  VideoCap1.SaveToClipboard;
  BMP := TBitMap.Create;
  BMP.LoadFromClipboardFormat(cf_BitMap,ClipBoard.GetAsHandle(cf_Bitmap),0);
  JPG := TJpegImage.Create;
  JPG.Assign(BMP);
//  BMP.SaveToFile(EditSPict.Text);
  JPG.SaveToFile(EditSPict.Text);
  JPG.Free;
  BMP.Free;
end;

procedure TFRM_CapturaWebCam.SpeedButton5Click(Sender: TObject);
var
    imagem : tPicture;
begin
    imagem := tPicture.create();
    imagem.LoadFromFile('C:\SisAcademia\imagens\Foto.jpg');
    clipboard.Assign(imagem);
    FRM_CadAlunos.dbFoto.PasteFromClipboard;
    imagem.Free;
    Close;
end;

procedure TFRM_CapturaWebCam.SpeedButton6Click(Sender: TObject);
begin
   Close;
end;
end.
