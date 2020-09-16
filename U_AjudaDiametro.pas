unit U_AjudaDiametro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, pngimage, ExtCtrls;

type
  TFRM_AjudaDiametro = class(TForm)
    Image1: TImage;
    lbltitulo: TLabel;
    Memo1: TMemo;
    Image2: TImage;
    Memo2: TMemo;
    lbltitulo2: TLabel;
    Memo3: TMemo;
    Image3: TImage;
    lbltitulo3: TLabel;
    Image4: TImage;
    lbltitulo4: TLabel;
    Memo4: TMemo;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_AjudaDiametro: TFRM_AjudaDiametro;

implementation

{$R *.dfm}

procedure TFRM_AjudaDiametro.SpeedButton1Click(Sender: TObject);
begin
   Close;
end;

end.

