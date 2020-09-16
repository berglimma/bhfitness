unit U_Postural1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtDlgs, StdCtrls, Buttons, ExtCtrls, Videocap, JPeG, clipbrd;

type
  TFRM_CapturaPostural1 = class(TForm)
    GroupBox1: TGroupBox;
    VideoCap1: TVideoCap;
    cbx_preview: TCheckBox;
    Panel1: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Panel2: TPanel;
    EditSPict: TEdit;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure SpeedButton4Click(Sender: TObject);
    procedure cbx_previewClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_CapturaPostural1: TFRM_CapturaPostural1;

implementation

uses U_AvaliacaoFisica;

{$R *.dfm}

procedure TFRM_CapturaPostural1.cbx_previewClick(Sender: TObject);
begin
   VideoCap1.VideoPreview := cbx_preview.Checked;
end;

procedure TFRM_CapturaPostural1.FormActivate(Sender: TObject);
begin
  FRM_CapturaPostural1.Caption := Application.Title + FRM_CapturaPostural1.Caption;
end;

procedure TFRM_CapturaPostural1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   VideoCap1.DriverOpen := False;
end;

procedure TFRM_CapturaPostural1.SpeedButton4Click(Sender: TObject);
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

procedure TFRM_CapturaPostural1.SpeedButton5Click(Sender: TObject);
var
    imagem : tPicture;
begin
    imagem := tPicture.create();
    imagem.LoadFromFile('C:\SisAcademia\imagens\Postural1.jpg');
    clipboard.Assign(imagem);
    FRM_AvaliacaoFisica.dbPostural1.PasteFromClipboard;
    imagem.Free;
    Close;
end;

procedure TFRM_CapturaPostural1.SpeedButton6Click(Sender: TObject);
begin
   Close;
end;

end.
