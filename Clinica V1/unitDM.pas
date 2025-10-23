unit unitDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef;

type
  TDM = class(TDataModule)
    Conexao: TFDConnection;
    dsPaciente: TDataSource;
    tbPaciente: TFDTable;
    tbAgendamento: TFDTable;
    dsAgendamento: TDataSource;
    tbPacienteid_paciente: TFDAutoIncField;
    tbPacientecpf_paciente: TStringField;
    tbPacientenome_paciente: TStringField;
    tbPacientecelular_paciente: TStringField;
    tbPacientedata_cadastro: TDateField;
    tbAgendamentoid_agendamento: TFDAutoIncField;
    tbAgendamentoid_paciente_agend: TIntegerField;
    tbAgendamentodata_agendamento: TDateField;
    tbAgendamentohora_agendamento: TTimeField;
    tbAgendamentomedico_agendamento: TStringField;
    tbAgendamentoespec_agendamento: TStringField;
    tbPacientedtnasc_paciente: TDateField;

    procedure tbPacienteAfterInsert(DataSet: TDataSet);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses
uFuncoes,
unitCadPaciente;


{$R *.dfm}




procedure TDM.tbPacienteAfterInsert(DataSet: TDataSet);
  begin
    tbPacientedata_cadastro.Value := Date();
  end;

end.
