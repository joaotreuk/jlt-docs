{ -------------------- MÉTODOS -------------------- }

// Converte um Double/Float para String
texto := FloatToStr(numero);

// Retorna um string fomatada de um número float
FormatFloat(
    '0.00', // Tipo de formatação, por padrão '0.00' gera no formato padrão do país cadastrado para o computador
    {
        '0.00' -> Formata com 0s como fixadores, no exemplo ficaria: 78.90
        '#.##' -> Formata sem fixadores, no exemplo ficaria: 78.9
        '#,##0.00' -> Adiciona um padrão de formatação, no exemplo ficaria: 78,90
        
        Fomatação específica para número positivo; número negativo; e zero
        '
            0.00; 
            (0.00); -78.9 virá (78.90)
            Zero -> 0 virá Zero
        '
    }
    78.9 // Variável float a ser formatada
);