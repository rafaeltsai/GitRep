unit unitPrincipal;

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
  Vcl.Dialogs,
  Vcl.Menus,
  Vcl.StdCtrls,
  Vcl.Buttons,
  Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

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

    {Validação de CPF}
    Function validaCPF(const ACPF :String): Boolean;




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




function TformPrincipal.validaCPF(const ACPF: String): Boolean;
  var cpfLimpo: String;
  i, soma, DV1, DV2, peso, resto, digito: Integer;

  begin
  // Remove pontos e traço
  cpfLimpo := StringReplace(ACPF, '.', '', [rfReplaceAll]);
  cpfLimpo := StringReplace(cpfLimpo, '-', '', [rfReplaceAll]);


  // --- Cálculo do primeiro dígito verificador ---
  peso:=10;
  resto:=0;
  soma:=0;
  digito:=0;
      for i := 1 to 9 do
        begin
          digito := StrToInt(cpfLimpo[i]);
            soma := soma + ( digito * peso);
            peso := peso - 1;
        end;

        resto := (11 - (soma mod 11));
          if resto >= 10 then
            resto := 0;
        DV1 := resto;


      // --- Cálculo do segundo dígito verificador ---
      soma := 0;
      digito := 0;
      resto := 0;
      peso := 11;
      for i := 1 to 10 do
        begin
          digito := StrToInt(cpfLimpo[i]);
            soma := soma + ( digito * peso);
            peso := peso - 1;
        end;

        resto := (11 - (soma mod 11));
          if resto >= 10 then
            resto := 0;
        DV2 := resto;

         // --- Verificação final dos Dígitos ---
        if (DV1 = StrToInt(cpfLimpo[10])) and (DV2 = StrToInt(cpfLimpo[11])) then
          begin
            //ShowMessage('CPF Válido');
            result := True;
          end
        else
          begin
            //ShowMessage('CPF Inválido');
            result := False;
          end;
  end;




end.
