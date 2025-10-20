unit uFuncoes;

interface

  Function validaCPF(const ACPF :String): Boolean;

implementation

  uses
  System.SysUtils;

  function validaCPF(const ACPF: String): Boolean;
  var cpfLimpo: String;
  i, soma, DV1, DV2, peso, resto, digito: Integer;

  begin
  // --- Remove pontos e tra�os da String ---
  cpfLimpo := StringReplace(ACPF, '.', '', [rfReplaceAll]);
  cpfLimpo := StringReplace(cpfLimpo, '-', '', [rfReplaceAll]);


  // --- Verifica se o CPF � uma Seq�ncia repetida

  { StringOfChar(cpfLimpo[1], 11)
    cria uma string de 11 caracteres iguais ao primeiro d�gito. }

  // Exit -> early return
  if StringOfChar(cpfLimpo[1], 11) = cpfLimpo then
    begin
      Result := False;
      Exit;
    end;

  // --- C�lculo do primeiro d�gito verificador ---
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


      // --- C�lculo do segundo d�gito verificador ---
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

         // --- Verifica��o final dos D�gitos ---
        if (DV1 = StrToInt(cpfLimpo[10])) and (DV2 = StrToInt(cpfLimpo[11])) then
          begin
            //ShowMessage('CPF V�lido');
            result := True;
          end
        else
          result := False;

  end;

end.
