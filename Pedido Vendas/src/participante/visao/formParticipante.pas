unit formParticipante;

interface

uses
  Winapi.Windows, 
  Winapi.Messages, 
  System.SysUtils, 
  System.Variants, 
  System.Classes, 
  Vcl.Graphics,
  Vcl.Controls, 
  Vcl.Forms, 
  constantes, 
  Vcl.Dialogs, 
  Vcl.StdCtrls, 
  OrComboBox, 
  OrEdit,
  participante.DAO.Interfaces,
  participante,
  conexao;

type
  TFrmParticipante = class(TForm)
    Label1: TLabel;
    edtCodigo: TOrEdit;
    edtNome: TOrEdit;
    Label2: TLabel;
    lblCidade: TLabel;
    lblEstado: TLabel;
    btnSair: TButton;
    btnCancelar: TButton;
    btnOK: TButton;
    edtEstado: TOrEdit;
    edtCidade: TOrEdit;

    participanteDAO : iParticipanteDAO;
    
    procedure btnSairClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure edtNomeChange(Sender: TObject);
    procedure edtCidadeChange(Sender: TObject);
    procedure edtEstadoChange(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure edtCodigoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);


  private
    { Private declarations }
    procedure limparInterface;
    procedure habilitarOk;
    procedure setAtributos;
    procedure getAtributos;
  public
    { Public declarations }
  end;

var
  FrmParticipante: TFrmParticipante;

implementation

uses
Participante.DAO;

{$R *.dfm}

procedure TFrmParticipante.btnCancelarClick(Sender: TObject);
begin
  limparInterface;
end;

procedure TFrmParticipante.btnOKClick(Sender: TObject);
begin
  setAtributos;
  participanteDAO.Salvar;
  if edtCodigo.CanFocus then
  begin
    edtCodigo.SetFocus;
    edtCodigo.SelectAll;
  end;
end;

procedure TFrmParticipante.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFrmParticipante.edtEstadoChange(Sender: TObject);
begin
  habilitarOk;
end;

procedure TFrmParticipante.edtCidadeChange(Sender: TObject);
begin
  habilitarOk;
end;

procedure TFrmParticipante.edtCodigoExit(Sender: TObject);
begin
    //getAtributos;
    if edtCodigo.Text <> NULL_STRING then
      setAtributos;
end;

procedure TFrmParticipante.edtNomeChange(Sender: TObject);
begin
  habilitarOk;
end;

procedure TFrmParticipante.FormCreate(Sender: TObject);
begin
  participanteDAO := TParticipanteDAO.New;
end;

procedure TFrmParticipante.getAtributos;
begin
  with participanteDAO.getParticipante As TParticipante do
  begin
//    if getCodigo <> NULL_INTEGER then
//      edtCodigo.Text := IntToStr(getCodigo);
    edtNome.Text := getNome;
    edtCidade.Text := getCidade;
    edtEstado.Text := getEstado;
  end;
end;

procedure TFrmParticipante.habilitarOk;
begin
  btnOK.Enabled := (edtNome.Text <> NULL_STRING)
  And (edtEstado.Text <> NULL_STRING)
  And (edtCidade.Text <> NULL_STRING);
end;

procedure TFrmParticipante.limparInterface;
begin
  edtCodigo.Clear;
  edtNome.Clear;
  edtEstado.Clear;
  edtCidade.Clear;
end;

procedure TFrmParticipante.setAtributos;
begin
with participanteDAO.getParticipante As TParticipante do
begin
//  if edtCodigo.Text = NULL_STRING then
//    setCodigo(NULL_INTEGER)
//  else
  setCodigo(StrToInt(edtCodigo.Text));
  setNome(edtNome.Text);
  setCidade(edtCidade.Text);
  setEstado(edtEstado.Text);
end;


end;

end.
