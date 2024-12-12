unit UDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDM = class(TDataModule)
    Conexao: TADOConnection;
    qryAux: TADOQuery;
    qryRelPaciente: TADOQuery;
    dsRelPaciente: TDataSource;
    qryRelPacienteId_Paciente: TAutoIncField;
    qryRelPacienteNome: TStringField;
    qryRelPacienteRG_HC: TStringField;
    qryRelPacienteDt_Nasc: TDateTimeField;
    qryRelPacienteTp_Doenca: TStringField;
    qryRelPacienteTelefone: TStringField;
    qryRelPacienteCelular: TStringField;
    qryRelPacienteRecado: TStringField;
    qryRelPacienteNome_Rec: TStringField;
    qryRelPacienteEndereco: TStringField;
    qryRelPacienteComplemento: TStringField;
    qryRelPacienteCidade: TStringField;
    qryRelPacienteBairro: TStringField;
    qryRelPacienteEstado: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
