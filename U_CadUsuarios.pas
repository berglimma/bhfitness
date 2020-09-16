unit U_CadUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, DB, StdCtrls, Mask, DBCtrls, ComCtrls, Buttons;

type
  TFRM_CadUsuarios = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    dsUsuarios: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_CadUsuarios: TFRM_CadUsuarios;

implementation

uses U_DM;

{$R *.dfm}

procedure TFRM_CadUsuarios.FormCreate(Sender: TObject);
begin
    FRM_CadUsuarios.Caption     := Application.Title + FRM_CadUsuarios.Caption;
end;

procedure TFRM_CadUsuarios.SpeedButton1Click(Sender: TObject);
begin
   Close;
end;

procedure TFRM_CadUsuarios.SpeedButton2Click(Sender: TObject);
begin
if Application.MessageBox('Criando um novo Usuário, só poderá ser deletado ou'+#13+
                          'alterado através do Programador, deseja prosseguir?',
      'Atenção!', 4 + MB_ICONWARNING)= idno then
   Abort
 else
   DM.qUsuario.ApplyUpdates;
end;

procedure TFRM_CadUsuarios.SpeedButton6Click(Sender: TObject);
begin
   DM.qUsuario.Append;
end;
end.
