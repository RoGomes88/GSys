unit UGSys;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.Menus,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro2: TMenuItem;
    Relatrios2: TMenuItem;
    Paciente2: TMenuItem;
    Exames2: TMenuItem;
    Consultas1: TMenuItem;
    Image1: TImage;
    Pacientes1: TMenuItem;
    Evoluo1: TMenuItem;
    HistricoConsultas1: TMenuItem;
    Consulta1: TMenuItem;
    ExamesExtras1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Paciente2Click(Sender: TObject);
    procedure DadosdoPaciente1Click(Sender: TObject);
    procedure Exames2Click(Sender: TObject);
    procedure Consultas1Click(Sender: TObject);
    procedure Pacientes1Click(Sender: TObject);
    procedure Evoluo1Click(Sender: TObject);
    procedure HistricoConsultas1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses UCadPaciente, UConsultaPaciente, UCadExames, UCadConsulta, URelPaciente, URelExames,
     URelConsultas;

{$R *.dfm}

procedure TfrmPrincipal.Consultas1Click(Sender: TObject);
begin
  frmCadConsulta := TfrmCadConsulta.Create(Application);
  frmCadConsulta.ShowModal;
end;

procedure TfrmPrincipal.DadosdoPaciente1Click(Sender: TObject);
begin
  frmConsultaPaciente := TfrmConsultaPaciente.Create(Application);
  frmConsultaPaciente.ShowModal;
end;

procedure TfrmPrincipal.Evoluo1Click(Sender: TObject);
begin
  frmRelExames := TfrmRelExames.Create(Application);
  frmRelExames.ShowModal;
end;

procedure TfrmPrincipal.Exames2Click(Sender: TObject);
begin
  frmCadExame := TfrmCadExame.Create(Application);
  frmCadExame.ShowModal;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  frmPrincipal.Height := Screen.Height;
  frmPrincipal.Width := Screen.Width;
end;

procedure TfrmPrincipal.HistricoConsultas1Click(Sender: TObject);
begin
  frmRelConsultas := TfrmRelConsultas.Create(Application);
  frmRelConsultas.ShowModal;
end;

procedure TfrmPrincipal.Paciente2Click(Sender: TObject);
begin
  frmCadPaciente := TfrmCadPaciente.Create(Application);
  frmCadPaciente.ShowModal;
end;

procedure TfrmPrincipal.Pacientes1Click(Sender: TObject);
begin
  frmRelPaciente := TfrmRelPaciente.Create(Application);
  frmRelPaciente.ShowModal;
end;

end.
