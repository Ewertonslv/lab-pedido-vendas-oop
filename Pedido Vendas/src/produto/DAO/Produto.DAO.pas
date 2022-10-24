unit Produto.DAO;

interface

uses 
Produto.DAO.Interfaces;

type
  TProdutoDAO = class(TInterfacedObject, iProdutoDAO)
  


  private

  public 
    function Salvar  : iProdutoDAO;
    function Excluir : iProdutoDAO;

  
end;


implementation

{ TProdutoDAO }

function TProdutoDAO.Excluir: iProdutoDAO;
begin
//
end;

function TProdutoDAO.Salvar: iProdutoDAO;
begin
//
end;

end.
