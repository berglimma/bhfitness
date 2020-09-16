unit U_Backup;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, IBServices, ComCtrls, ExtCtrls, Registry;

type
  TFRM_Backup = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    IBBackupService1: TIBBackupService;
    OpenDialog1: TOpenDialog;
    Memo1: TMemo;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    TabSheet2: TTabSheet;
    BitBtn2: TBitBtn;
    Animate1: TAnimate;
    Bevel1: TBevel;
    Edit3: TEdit;
    Label3: TLabel;
    Bevel2: TBevel;
    RichEdit1: TRichEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    procedure GetDatabaseParams;
    function GetDirectoryWindows: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_Backup: TFRM_Backup;

implementation

uses U_DM;

{$R *.DFM}

procedure TFRM_Backup.BitBtn1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  Edit1.Text := OpenDialog1.FileName;
end;

function TFRM_Backup.GetDirectoryWindows: String;
var
  Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_LOCAL_MACHINE;
  if Reg.Openkey('SOFTWARE\Microsoft\Windows\CurrentVersion',False) then
 // Result := Reg.ReadString('ProgramFilesDir');
  Result := Reg.ReadString('C:\');
  Reg.free;
end;

procedure TFRM_Backup.SpeedButton1Click(Sender: TObject);
begin
   Close;
end;

procedure TFRM_Backup.GetDatabaseParams;
var
  GetRegIniFile : TRegIniFile;
begin
   GetRegIniFile := TRegIniFile.Create('Software\SisAcademia');
   GetRegIniFile := TRegIniFile.Create('C:\SisAcademia\BancodeDados');
  try
    Edit1.Text := GetRegIniFile.ReadString('Connection','Databasename',GetDirectoryWindows+ 'C:\SisAcademia\BancodeDados\Banco.GDB');
    with IBBackupService1 do
    begin
      Params.Add('USER_NAME='+ GetRegIniFile.ReadString('Connection','Username','SYSDBA'));
      Params.Add('PASSWORD='+ GetRegIniFile.ReadString('Connection','Password','masterkey'));
    end;
  finally
    GetRegIniFile.Free;
  end;
end;

procedure TFRM_Backup.BitBtn2Click(Sender: TObject);
begin
    Dm.qConfigGeral.Edit;
    DM.qConfigGeral.FieldByName('DATA_BACKUP').Text     := DatetoStr(now);
    Dm.qConfigGeral.ApplyUpdates;
    DM.Database.Connected               := False;
    DM.Transaction.Active               := False;

  with IBBackupService1 do
  begin
        ServerName := Edit3.Text;
        LoginPrompt := False;
        Active := True;
    try
        Verbose := True;
        DatabaseName := Edit1.Text;
        BackupFile.Add(Edit2.Text);
        Animate1.CommonAVI := aviCopyFiles;
        Animate1.Active := True;
        ServiceStart;
      While not Eof do
        Memo1.Lines.Add(GetNextLine);
        Animate1.Active := False;
        Animate1.CommonAVI := aviNone;
    finally
      Active := False;
      ShowMessage('Backup efetuado com sucesso - o Sistema será finalizado!');
      Application.Terminate;
    end;
  end;
end;

procedure TFRM_Backup.CheckBox1Click(Sender: TObject);
begin
  if checkBox1.Checked then
    IBBackupService1.Options := IBBackupService1.Options + [nontransportable]
  else
    IBBackupService1.Options := IBBackupService1.Options - [nontransportable];
end;

procedure TFRM_Backup.CheckBox2Click(Sender: TObject);
begin
  if checkBox1.Checked then
    IBBackupService1.Options := IBBackupService1.Options + [ignorelimbo]
  else
    IBBackupService1.Options := IBBackupService1.Options - [ignorelimbo];
end;

procedure TFRM_Backup.CheckBox3Click(Sender: TObject);
begin
  if checkBox1.Checked then
    IBBackupService1.Options := IBBackupService1.Options + [metadataonly]
  else
    IBBackupService1.Options := IBBackupService1.Options - [metadataonly];
end;

procedure TFRM_Backup.CheckBox4Click(Sender: TObject);
begin
  if checkBox1.Checked then
    IBBackupService1.Options := IBBackupService1.Options + [nogarbagecollection]
  else
    IBBackupService1.Options := IBBackupService1.Options - [nogarbagecollection];
end;

procedure TFRM_Backup.CheckBox5Click(Sender: TObject);
begin
  if checkBox1.Checked then
    IBBackupService1.Options := IBBackupService1.Options + [ignorechecksums]
  else
    IBBackupService1.Options := IBBackupService1.Options - [ignorechecksums];
end;

procedure TFRM_Backup.FormCreate(Sender: TObject);
begin
    FRM_Backup.Caption := Application.Title + FRM_Backup.Caption;
    GetDatabaseParams;
end;

end.
