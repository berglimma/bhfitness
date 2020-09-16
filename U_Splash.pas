unit U_Splash;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Gauges, jpeg, StdCtrls, DBCtrls, pngimage;

type
  TFRM_Splash = class(TForm)
    gProgress: TGauge;
    Label3: TLabel;
    lblversao: TLabel;
    Timer1: TTimer;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    DBImage1: TDBImage;
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_Splash: TFRM_Splash;

implementation

uses U_Principal, U_Login, U_DM;

{$R *.dfm}

procedure TFRM_Splash.FormActivate(Sender: TObject);
begin
//   Brush.Style:=bsClear
end;

procedure TFRM_Splash.Timer1Timer(Sender: TObject);
begin
   sleep(10);
     gProgress.Progress := gProgress.Progress +1;
    if gProgress.Progress > 5 then
      begin
       Image2.Visible := True;
    if gProgress.Progress > 10 then
      begin
       Image3.Visible := True;
    if gProgress.Progress > 20 then
      begin
       Image4.Visible := True;
    if gProgress.Progress > 30 then
      begin
       Image5.Visible := True;
    if gProgress.Progress > 50 then
      begin
       Image6.Visible := True;
    if gProgress.Progress > 80 then
      begin
       Image7.Visible := True;
    if gProgress.Progress > 90 then
      begin
       Image8.Visible := True;
      gprogress.Progress := gProgress.Progress +1;
  if gProgress.Progress  > 99 then
     begin
      Application.CreateForm(TFRM_Login, FRM_Login);
      FRM_Login.ShowModal;
     end;
    end;
   end;
  end;
 end;
end;
end;
end;
end;
end.
