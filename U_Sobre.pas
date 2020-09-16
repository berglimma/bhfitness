unit U_Sobre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls, ComCtrls, DBCtrls;

type
  TFRM_Sobre = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBImage1: TDBImage;
    SpeedButton1: TSpeedButton;
    Memo1: TMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_Sobre: TFRM_Sobre;

implementation

uses U_DM;

{$R *.dfm}

procedure TFRM_Sobre.BitBtn1Click(Sender: TObject);
begin
   Close;
end;

procedure TFRM_Sobre.FormCreate(Sender: TObject);
begin
   FRM_Sobre.Caption := Application.Title + FRM_Sobre.Caption;
end;

procedure TFRM_Sobre.SpeedButton1Click(Sender: TObject);
begin
   Close;
end;
end.
