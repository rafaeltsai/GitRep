unit uFuncoes;

interface

  Function validaCPF(const ACPF :String): Boolean;
  Function calculaIdade(data_nascimento: TDateTime): String;



implementation

  uses
  System.SysUtils,
  System.DateUtils,
  Winapi.Windows,
  Winapi.Messages,
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
  Vcl.Imaging.jpeg,
  unitCadPaciente;


  //Função que calcula a idade e retorna uma String
  function calculaIdade(data_nascimento: TDateTime): String;
   var hoje, DataTemp: TDateTime;
   ano, mes, dia: Integer;
  begin
     hoje := Date;
     ano := YearsBetween(data_nascimento, hoje);
     DataTemp := IncYear(data_nascimento, ano);
     mes := MonthsBetween(DataTemp, hoje);
     DataTemp := IncMonth(DataTemp, mes);
     dia := DaysBetween(DataTemp, hoje);

     Result :=
     (IntToStr(ano) + ' anos ' + IntToStr(mes) + ' meses e ' + IntToStr(dia) + ' dias');

  end;


  function validaCPF(const ACPF: String): Boolean;
  var cpfLimpo: String;
  i, soma, DV1, DV2, peso, resto, digito: Integer;

  begin
  // --- Remove pontos e traços da String ---
  cpfLimpo := StringReplace(ACPF, '.', '', [rfReplaceAll]);
  cpfLimpo := StringReplace(cpfLimpo, '-', '', [rfReplaceAll]);


  // --- Verifica se o CPF é uma Seqência repetida

  { StringOfChar(cpfLimpo[1], 11)
    cria uma string de 11 caracteres iguais ao primeiro dígito. }

  // Exit -> early return
  if StringOfChar(cpfLimpo[1], 11) = cpfLimpo then
    begin
      Result := False;
      Exit;
    end;

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
          result := False;

  end;

end.
