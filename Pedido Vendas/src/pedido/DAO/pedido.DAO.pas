unit pedido.DAO;

interface

uses 
pedido.DAO.interfaces;


type
  TpedidoDAO = class(TInterfacedObject, iPedidoDAO)
  


  private

  public 
    function Salvar  : iPedidoDAO;
    function Excluir : iPedidoDAO;

  
  end;


implementation

{ TpedidoDAO }

function TpedidoDAO.Excluir: iPedidoDAO;
begin
//
end;

function TpedidoDAO.Salvar: iPedidoDAO;
begin
//
end;

end.
