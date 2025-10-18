unit unitCadPaciente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Data.DB,
  Vcl.Buttons, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask;

type
  TformCadPacientes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    txtID: TDBEdit;
    txtNome: TDBEdit;
    txtCPF: TDBEdit;
    txtCelular: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    txtDataCadastro: TDBEdit;
    gridPacientes: TDBGrid;
    txtBusca: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBNavigator1: TDBNavigator;
    procedure txtBuscaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCadPacientes: TformCadPacientes;

implementation

{$R *.dfm}

uses unitDM;

procedure TformCadPacientes.txtBuscaChange(Sender: TObject);
  begin
    DM.tbPaciente.Locate('nome_paciente', txtBusca.Text, [loPartialKey]);
  end;

end.
