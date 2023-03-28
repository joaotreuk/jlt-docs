// Generate Pipe

// Gerando um transformador pipe
import { DatePipe } from '@angular/common';
import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'Meu' // Nome chave que será usado com o pipe
})
// Extendendo o DatePipe para usar o transformador de data
export class MeuPipe extends DatePipe implements PipeTransform {

	// Transformação a ser realizada
	// Parâmetros: valor a ser transformado, e parâmetro opcional
  transform(valor: Date, args?: any): string {
		// Transformador de data
    return super.transform(valor, 'dd/mm/yyyy hh:mm');
  }

}
