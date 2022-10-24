unit participante;

interface

type 
  TParticipante = class
  
  private
    Fcodigo : Integer;
    Fnome : string;
    Fcidade : string;
    Festado : string;

    
  public 
    procedure setCodigo(Fcodigo : integer);
    procedure setNome (Fnome : string);
    procedure setCidade(Fcidade : string);
    procedure setEstado (Festado : string);

    function  getCodigo: integer;
    function  getNome: string;
    function  getCidade: string;
    function  getEstado: string;

end;
  
implementation
             
{ TParticipante }

function TParticipante.getCidade: string;
begin
  result := Fcidade;
end;

function TParticipante.getCodigo: integer;
begin
  result := Fcodigo;
end;

function TParticipante.getEstado: string;
begin
  result := Festado;
end;

function TParticipante.getNome: string;
begin
  result := Fnome;
end;

procedure TParticipante.setCidade(Fcidade: string);
begin
  self.Fcidade := Fcidade;
end;

procedure TParticipante.setCodigo(Fcodigo: integer);
begin
  self.Fcodigo := Fcodigo;
end;

procedure TParticipante.setNome(Fnome: string);
begin
  self.Fnome := Fnome;
end;

procedure TParticipante.setEstado(Festado: string);
begin
  self.Festado := Festado;
end;

end.
