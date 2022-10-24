unit Participante.DAO;

interface


uses 
Participante.DAO.Interfaces, 
participante, 
conexao,
System.Classes,FireDAC.Stan.Param;

type 
TParticipanteDAO = class (TInterfacedObject, iParticipanteDAO)

  class function New: TParticipanteDAO;
private
  participante: TParticipante;
  participanteDAO: iParticipanteDAO;
  Fconecao : TDataModule1;
  
public 
    function Salvar     : iParticipanteDAO;
    function Excluir    : iParticipanteDAO;
    function Encontrar  : Boolean;
   

    
    
    function  getParticipante: TParticipante;
    procedure setParticipante(participante: TParticipante);
end;
implementation

{ TParticipanteDAO }


function TParticipanteDAO.Encontrar: Boolean;
begin
//
end;

function TParticipanteDAO.Excluir: iParticipanteDAO;
begin
//
end;

function TParticipanteDAO.getParticipante: TParticipante;
begin
  result := participante;
end;

class function TParticipanteDAO.New: TParticipanteDAO;
begin
  Result := Self.Create;
end;

function TParticipanteDAO.Salvar: iParticipanteDAO;
begin
  with Fconecao do
  begin
    with participanteDAO.getParticipante As TParticipante do
    begin
      with getParticipante do
      begin
                                                                                
         FDConnection1.ExecSQL(
        'INSERT INTO cliente (nome, cidade, estado) VALUES (:nome, :cidade, :estado)', [getNome, getCidade, getEstado]);

        //ParamByName('nome').AsString := '1';'
      end;

    end;
  end;


end;          

procedure TParticipanteDAO.setParticipante(participante: TParticipante);
begin
  Self.participante := participante;
end;

end.
