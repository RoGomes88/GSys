program GSYS;

uses
  Vcl.Forms,
  UGSys in 'UGSys.pas' {frmPrincipal},
  UConsultaPaciente in 'UConsultaPaciente.pas' {frmConsultaPaciente},
  UCadExames in 'UCadExames.pas' {frmCadExame},
  UDM in 'UDM.pas' {DM: TDataModule},
  UGlobal in 'UGlobal.pas',
  UCadConsulta in 'UCadConsulta.pas' {frmCadConsulta},
  URelConsultas in 'URelConsultas.pas' {frmRelConsultas},
  UMsg in 'UMsg.pas' {frmMensagem};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
