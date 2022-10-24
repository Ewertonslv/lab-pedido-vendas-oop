unit participante.DAO.Interfaces;



interface

uses
  participante;

type 
  iParticipanteDAO = interface['{7B68DEF3-B794-4483-82F6-B65244FD98B1}']
  function Salvar     : iParticipanteDAO;
  function Excluir    : iParticipanteDAO;
  function Encontrar  : Boolean;
  
  function  getParticipante: TParticipante;
  procedure setParticipante(participante: TParticipante);
end;

implementation

end.
