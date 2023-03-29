{ -------------------- M�TODOS -------------------- }

// Converte um Double/Float para String
texto := FloatToStr(numero);

// Retorna um string fomatada de um n�mero float
FormatFloat(
    '0.00', // Tipo de formata��o, por padr�o '0.00' gera no formato padr�o do pa�s cadastrado para o computador
    {
        '0.00' -> Formata com 0s como fixadores, no exemplo ficaria: 78.90
        '#.##' -> Formata sem fixadores, no exemplo ficaria: 78.9
        '#,##0.00' -> Adiciona um padr�o de formata��o, no exemplo ficaria: 78,90
        
        Fomata��o espec�fica para n�mero positivo; n�mero negativo; e zero
        '
            0.00; 
            (0.00); -78.9 vir� (78.90)
            Zero -> 0 vir� Zero
        '
    }
    78.9 // Vari�vel float a ser formatada
);