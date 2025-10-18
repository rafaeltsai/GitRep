unit unitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg;

type
  TformPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Sair1: TMenuItem;
    Cadastros1: TMenuItem;
    Pacientes1: TMenuItem;
    Agendamentos1: TMenuItem;
    Panel1: TPanel;
    btnPacientes: TBitBtn;
    btnAgendamentos: TBitBtn;
    Image1: TImage;
    procedure Sair1Click(Sender: TObject);
    procedure Pacientes1Click(Sender: TObject);
    procedure Agendamentos1Click(Sender: TObject);
    procedure btnPacientesClick(Sender: TObject);
    procedure btnAgendamentosClick(Sender: TObject);
    procedure Espcialidades1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formPrincipal: TformPrincipal;

implementation

{$R *.dfm}

uses unitCadPaciente, UnitCadAgendamentos, unitCadEspecialidade;

procedure TformPrincipal.Agendamentos1Click(Sender: TObject);
begin
  formAgendamentos.ShowModal;
end;



procedure TformPrincipal.btnAgendamentosClick(Sender: TObject);
  begin
    formAgendamentos.ShowModal;
  end;

procedure TformPrincipal.btnPacientesClick(Sender: TObject);
  begin
    formCadPacientes.ShowModal;
  end;

procedure TformPrincipal.Espcialidades1Click(Sender: TObject);
  begin
    formCadEspecialidade.ShowModal;
  end;

procedure TformPrincipal.Pacientes1Click(Sender: TObject);
  begin
    formCadPacientes.ShowModal;
  end;






procedure TformPrincipal.Sair1Click(Sender: TObject);
  begin
    Application.Terminate;
  end;

end.
