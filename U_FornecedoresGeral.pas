unit U_FornecedoresGeral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, pngimage, DB;

type
  TFRM_FornecedoresGeral = class(TForm)
    Label9: TLabel;
    Label1: TLabel;
    Image1: TImage;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Panel2: TPanel;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label4: TLabel;
    Image2: TImage;
    lblNaoEncontrado: TLabel;
    Panel4: TPanel;
    edBusca: TEdit;
    cbListarFornecedor: TComboBox;
    TotalFornecedores: TEdit;
    TotalFornecedoresAtivos: TEdit;
    TotalFornecedoresInativos: TEdit;
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edBuscaChange(Sender: TObject);
    procedure cbListarFornecedorChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_FornecedoresGeral: TFRM_FornecedoresGeral;

implementation

uses U_CadFornecedor, U_DM, U_Pacientes;

{$R *.dfm}

procedure TFRM_FornecedoresGeral.cbListarFornecedorChange(Sender: TObject);
begin
    DM.qfornecedor.Close;
    DM.qfornecedor.SQL.Clear;
    DM.qfornecedor.SQL.Add('select * from FORNECEDOR');
    DM.qfornecedor.SQL.Add('where SITUACAO like'+''''+cbListarFornecedor.Text+'%'+'''order By NOME');;
    DM.qfornecedor.Open;
  if  DM.qfornecedor.RecordCount > 0 then begin
    DM.qfornecedor.First;
  while not DM.qfornecedor.Eof do
  begin
    lblNaoEncontrado.Visible  := True;
    lblNaoEncontrado.Caption  := 'Total Encontrado:  ' + IntTostr(DM.qfornecedor.RecordCount);
    DM.qfornecedor.Next;
end;
  end;
end;


procedure TFRM_FornecedoresGeral.DBGrid1DblClick(Sender: TObject);
begin
   Application.CreateForm(TFRM_CadFornecedor, FRM_CadFornecedor);
   FRM_CadFornecedor.ShowModal;
end;

procedure TFRM_FornecedoresGeral.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   ShowScrollBar(DBGrid1.Handle,SB_HORZ,False);
end;

procedure TFRM_FornecedoresGeral.edBuscaChange(Sender: TObject);
begin
  with DM.qFornecedor do
  begin
    DM.qFornecedor.Open;
    DM.qFornecedor.Locate('NOME',edBusca.Text,[ loPartialKey]);
  if not DM.qFornecedor.Locate('NOME',edBusca.Text,[ loPartialKey]) then
    lblNaoEncontrado.Visible := True
  else
    lblNaoEncontrado.Visible := False
  end;
end;


procedure TFRM_FornecedoresGeral.FormCreate(Sender: TObject);
begin
   FRM_FornecedoresGeral.Caption := Application.Title + FRM_FornecedoresGeral.Caption;
end;

procedure TFRM_FornecedoresGeral.FormShow(Sender: TObject);
begin
   FRM_FornecedoresGeral.Caption := Application.Title + FRM_FornecedoresGeral.Caption;
end;

procedure TFRM_FornecedoresGeral.SpeedButton1Click(Sender: TObject);
begin
   Close;
end;

procedure TFRM_FornecedoresGeral.SpeedButton2Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_CadFornecedor, FRM_CadFornecedor);
   DM.qFornecedor.Edit;
   FRM_CadFornecedor.ShowModal;
end;

procedure TFRM_FornecedoresGeral.SpeedButton3Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_CadFornecedor, FRM_CadFornecedor);
   FRM_CadFornecedor.ShowModal;
end;

procedure TFRM_FornecedoresGeral.SpeedButton5Click(Sender: TObject);
begin
   Application.CreateForm(TFRM_CadFornecedor, FRM_CadFornecedor);
   DM.qFornecedor.Append;
   DM.qFornecedor.FieldByName('DATA_CADASTRO').Value := DatetoStr(now);
   DM.qFornecedor.FieldByName('OBS').Value      := '   ';
   DM.qFornecedor.FieldByName('SITUACAO').Text  := 'ATIVO';
   FRM_CadFornecedor.ShowModal;
end;

end.
