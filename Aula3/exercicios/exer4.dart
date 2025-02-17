import 'dart:io';

void converterMoeda() {
  // Tabela de conversão das moedas
  const double valorEuro = 7.00;
  const double valorDolar = 6.56;
  const double valorFrancoSuico = 4.35;

  // Receber o valor em reais
  stdout.write('Digite o valor em reais (R\$): ');  // Corrigido o símbolo de R$
  double reais = double.parse(stdin.readLineSync()!);

  // Exibir as opções para o usuário
  print('\nEscolha a moeda para conversão:');
  print('1 - Euro (EUR)');
  print('2 - Dólar (USD)');
  print('3 - Franco Suíço (CHF)');

  // Receber a escolha da moeda
  stdout.write('Escolha a opção (1, 2 ou 3): ');
  int opcao = int.parse(stdin.readLineSync()!);

  // Realizar a conversão de acordo com a escolha
  double convertido;

  switch (opcao) {
    case 1:
      convertido = reais / valorEuro;
      print('\nR\$ $reais equivale a € $convertido');
      break;
    case 2:
      convertido = reais / valorDolar;
      print('\nR\$ $reais equivale a \$ $convertido');
      break;
    case 3:
      convertido = reais / valorFrancoSuico;  // Corrigido o nome da variável
      print('\nR\$ $reais equivale a CHF $convertido');
      break;
    default:
      print('Opção inválida.');
  }
}

void main() {
  converterMoeda(); // Chama a função para converter a moeda
}
