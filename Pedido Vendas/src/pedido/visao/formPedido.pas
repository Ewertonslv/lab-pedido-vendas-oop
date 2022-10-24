unit formPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.Mask, RxToolEdit,
  RxCurrEdit, OrCurrencyEdit, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.StdCtrls;

type
  TFrmPedido = class(TForm)
    PageControl: TPageControl;
    TabSheet1: TTabSheet;
    Label16: TLabel;
    Label17: TLabel;
    lblQuantidade: TLabel;
    Label20: TLabel;
    Label29: TLabel;
    edtDescricao: TEdit;
    edtCodigoProduto: TEdit;
    edtQuantidade: TEdit;
    edtValor: TEdit;
    btnAdicionar: TButton;
    btnRemover: TButton;
    btnSair: TButton;
    btnOK: TButton;
    stgProduto: TStringGrid;
    valorTotal: TLabel;
    lblValorTotal: TLabel;
    procedure btnAdicionarClick(Sender: TObject);
    procedure ajustarGrid(aRowCount: Integer = 2);
    procedure FormCreate(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPedido: TFrmPedido;

implementation

{$R *.dfm}

procedure TFrmPedido.ajustarGrid(aRowCount: Integer);
begin
 with stgProduto do
  begin
    if aRowCount < 2 then
      aRowCount := 1;

    ColCount         := 4;
    RowCount         := aRowCount;
    FixedRows        := 1;
    DefaultRowHeight := 20;

    DoubleBuffered := True;
    ScrollBars     := ssVertical;
    TabStop        := True;

    Options := Options - [goRangeSelect];
    Options := Options + [goRowSelect];
    Options := Options + [goDrawFocusSelected];

    Rows[1].Clear;

    Cols[0].Text := 'CÓDIGO';
    ColWidths[0] := TRUNC(Self.Width * 0.100);
    Cols[1].Text := 'DESCRIÇÃO';
    ColWidths[1] := TRUNC(Self.Width * 0.500);
    Cols[2].Text := 'QTD.';
    ColWidths[2] := TRUNC(Self.Width * 0.100);
    Cols[3].Text := 'VL UNI';
    ColWidths[3] := TRUNC(Self.Width * 0.150);
  end;
end;

procedure TFrmPedido.btnAdicionarClick(Sender: TObject);
var
  vlTotal : Integer;
begin
  if (stgProduto.Cells[0,stgProduto.RowCount-1] <> '') then
    stgProduto.RowCount := stgProduto.RowCount + 1;

  stgProduto.Cells[0,stgProduto.RowCount-1] := edtCodigoProduto.Text;

  stgProduto.Cells[1,stgProduto.RowCount-1] := edtDescricao.Text;

  stgProduto.Cells[2,stgProduto.RowCount-1] := edtQuantidade.Text;

  stgProduto.Cells[3,stgProduto.RowCount-1] := edtValor.Text;

  vlTotal := strtoInt(edtQuantidade.Text) * StrToInt(edtValor.Text);         //houndABNT

  lblValorTotal.Caption := IntToStr(vlTotal);
  edtCodigoProduto.Clear;
  edtCodigoProduto.SetFocus;
end;



procedure TFrmPedido.btnRemoverClick(Sender: TObject);
begin
//
end;

procedure TFrmPedido.FormCreate(Sender: TObject);
begin
  ajustarGrid;
end;

end.
