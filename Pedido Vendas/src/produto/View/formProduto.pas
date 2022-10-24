unit formProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, constantes, Vcl.Dialogs, Vcl.StdCtrls, KrkVCL.CustomEdit,
  KrkVCL.CustomButtonEdit, KrkVCL.NumberEdit, Vcl.Grids;

type
  TFrmProduto = class(TForm)
    edtCodigo: TEdit;
    Label1: TLabel;
    edtDescricao: TMemo;
    lblDescricao: TLabel;
    edtValor: TKrkVCLNumberEdit6;
    Label2: TLabel;
    btnSair: TButton;
    btnCancelar: TButton;
    btnOK: TButton;
    procedure btnSairClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure edtDescricaoChange(Sender: TObject);
    procedure edtValorChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure limparInterface;
    procedure habilitaOK;

  public
    { Public declarations }
  end;

var
  FrmProduto: TFrmProduto;

implementation

{$R *.dfm}


procedure TFrmProduto.btnCancelarClick(Sender: TObject);
begin
  limparInterface;
end;

procedure TFrmProduto.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmProduto.edtDescricaoChange(Sender: TObject);
begin
  habilitaOK;
end;

procedure TFrmProduto.edtValorChange(Sender: TObject);
begin
  habilitaOK;
end;

procedure TFrmProduto.FormCreate(Sender: TObject);
begin
//
end;

procedure TFrmProduto.habilitaOK;
begin
  btnOK.Enabled := (edtDescricao.Text <> Null_string) 
  And (edtValor.Text <> NULL_STRING); 
end;

procedure TFrmProduto.limparInterface;
begin
  edtCodigo.Clear;
  edtDescricao.Clear;
  edtValor.Clear;
end;

end.
