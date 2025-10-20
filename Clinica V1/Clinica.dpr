program Clinica;

uses
  Vcl.Forms,
  unitPrincipal in 'unitPrincipal.pas' {formPrincipal},
  unitCadPaciente in 'unitCadPaciente.pas' {formCadPacientes},
  UnitCadAgendamentos in 'UnitCadAgendamentos.pas' {formAgendamentos},
  unitDM in 'unitDM.pas' {DM: TDataModule},
  uFuncoes in 'uFuncoes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.CreateForm(TformCadPacientes, formCadPacientes);
  Application.CreateForm(TformAgendamentos, formAgendamentos);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
