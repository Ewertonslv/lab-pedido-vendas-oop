unit formPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, formPedido;

type
  TFrmPrincipal = class(TForm)
    btnCadastrarParticipante: TSpeedButton;
    btnCadastrarProduto: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    btnPedido: TSpeedButton;
    procedure btnCadastrarParticipanteClick(Sender: TObject);
    procedure btnCadastrarProdutoClick(Sender: TObject);
    procedure btnPedidoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses 
formParticipante, formProduto;

{$R *.dfm}

procedure TFrmPrincipal.btnCadastrarParticipanteClick(Sender: TObject);
begin
 FrmParticipante := TFrmParticipante.create(Self);
 FrmParticipante.ShowModal;
 FrmParticipante.Free;
end;

procedure TFrmPrincipal.btnCadastrarProdutoClick(Sender: TObject);
begin
 FrmProduto := TFrmProduto.create(Self);
 FrmProduto.ShowModal;
 FrmProduto.Free;
end;

procedure TFrmPrincipal.btnPedidoClick(Sender: TObject);
begin
 FrmPedido := TFrmPedido.create(Self);
 FrmPedido.ShowModal;
 FrmPedido.Free;
end;

end.
