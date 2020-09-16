unit U_Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls, ComCtrls, DBCtrls;

type
  TFRM_Login = class(TForm)
    Label1: TLabel;
    edLogin: TEdit;
    edSenha: TEdit;
    Label2: TLabel;
    StatusBar1: TStatusBar;
    Label3: TLabel;
    lblVersao: TLabel;
    DBImage1: TDBImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure edLoginKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure edLoginExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_Login: TFRM_Login;
  Tentativa: Byte;
implementation

uses U_Principal, U_Splash, U_DM, U_VisaoGeral, U_Empresa;

{$R *.dfm}

procedure TFRM_Login.edLoginExit(Sender: TObject);
begin
if edlogin.Text <> '' then begin
      if not DM.qUsuario.Locate('NOME',edlogin.Text,[]) then begin
         MessageDlg('Usuário não cadastrado.', mtInformation,[mbOk], 0);
         edlogin.Setfocus;
      end;
   end;
end;

procedure TFRM_Login.edLoginKeyPress(Sender: TObject; var Key: Char);
begin
  if key= #13 then
    begin
      perform(cm_dialogkey,vk_tab,0);
      key:=#0;
    end;
  if key= #27 then
      close;
end;

procedure TFRM_Login.FormActivate(Sender: TObject);
begin
   lblversao.Caption := FRM_Splash.lblVersao.Caption;
   FRM_Splash.Free;
   StatusBar1.Panels[0].Text := DM.qAcademia.FieldByName('Cidade').Text + '-' + DM.qAcademia.FieldByName('UF').Text + FormatDateTime(' - dddddd',Date)+'';
end;
procedure TFRM_Login.FormCreate(Sender: TObject);
begin
   FRM_Login.Caption := Application.Title + FRM_Login.Caption;
end;

procedure TFRM_Login.SpeedButton1Click(Sender: TObject);
begin
  if edSenha.Text <> DM.qUsuario.FieldByName('SENHA').AsString Then
    begin
      Tentativa:=Tentativa+1;
    If Tentativa > 2 then
      begin
        MessageDlg('Você atingiu o Limite Maximo de Tentativas!', mtInformation,[mbOk], 0);
        Application.Terminate;
      end
  else
      begin
        MessageDlg('Senha Inválida!', mtInformation,[mbOk], 0);
        abort;
        edLogin.Setfocus;
      end;
        ModalResult := 0;
      end
  else
      begin
        if edLogin.Text = '' then
          begin
              Showmessage ('Especifique um Usuário!');
              edLogin.SetFocus;
          end
  else
      begin
          if DM.qAcademia.RecordCount <> 0 then
            begin
              Application.CreateForm(TFRM_Principal, FRM_Principal);
              FRM_Principal.ShowModal;
              ModalResult := 1;
            end
        else
            begin
              Application.CreateForm(TFRM_CadEmpresa, FRM_CadEmpresa);
              DM.qAcademia.Append;
              FRM_CadEmpresa.ShowModal;
            end;
        end;
      end;
end;

procedure TFRM_Login.SpeedButton2Click(Sender: TObject);
begin
 if Application.MessageBox('Deseja sair do Sistema?',
      'Sair do Sistema?', 4 + MB_ICONWARNING)= idno then abort else
   Application.Terminate;
end;

end.
