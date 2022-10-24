program Pedido_Vendas;

uses
  Vcl.Forms,
  formPrincipal in '..\src\principal\formPrincipal.pas' {FrmPrincipal},
  formProduto in '..\src\produto\View\formProduto.pas' {FrmProduto},
  Produto in '..\src\produto\Model\Produto.pas',
  formParticipante in '..\src\participante\visao\formParticipante.pas' {FrmParticipante},
  participante in '..\src\participante\modelo\participante.pas',
  Participante.DAO in '..\src\participante\DAO\Participante.DAO.pas',
  participante.DAO.Interfaces in '..\src\participante\DAO\interfaces\participante.DAO.Interfaces.pas',
  formPedido in '..\src\pedido\visao\formPedido.pas' {FrmPedido},
  Pedido in '..\src\pedido\modelo\Pedido.pas',
  conexao in '..\src\conexao\conexao.pas' {DataModule1: TDataModule},
  pedido.DAO.interfaces in '..\src\pedido\DAO\Interfaces\pedido.DAO.interfaces.pas',
  pedido.DAO in '..\src\pedido\DAO\pedido.DAO.pas',
  Produto.DAO in '..\src\produto\DAO\Produto.DAO.pas',
  Produto.DAO.Interfaces in '..\src\produto\DAO\Interfaces\Produto.DAO.Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmProduto, FrmProduto);
  Application.CreateForm(TFrmParticipante, FrmParticipante);
  Application.CreateForm(TFrmPedido, FrmPedido);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
