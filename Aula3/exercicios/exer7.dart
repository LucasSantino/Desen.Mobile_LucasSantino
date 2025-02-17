/*7. Crie um programa que receba o valor médio de três modelos de carro e indique qual é mais caro e o mais barato.
*/ 

import 'dart:io';

void main() {
  // Função para ler um valor numérico válido
  double lerValor(String mensagem) {
    double? valor;
    while (valor == null) {
      stdout.write(mensagem);
      String? entrada = stdin.readLineSync();
      try {
        valor = double.parse(entrada!);
      } catch (e) {
        print('Por favor, insira um valor numérico válido.');
      }
    }
    return valor;
  }

  // Recebe o valor médio dos três modelos de carro
  double carro1 = lerValor('Digite o valor do primeiro modelo de carro: ');
  double carro2 = lerValor('Digite o valor do segundo modelo de carro: ');
  double carro3 = lerValor('Digite o valor do terceiro modelo de carro: ');

  // Verifica qual carro é o mais caro e o mais barato
  double maisCaro = carro1;
  double maisBarato = carro1;

  if (carro2 > maisCaro) {
    maisCaro = carro2;
  }
  if (carro3 > maisCaro) {
    maisCaro = carro3;
  }

  if (carro2 < maisBarato) {
    maisBarato = carro2;
  }
  if (carro3 < maisBarato) {
    maisBarato = carro3;
  }

  // Exibe os resultados
  print('\nO carro mais caro custa R\$ $maisCaro');
  print('O carro mais barato custa R\$ $maisBarato');
}

