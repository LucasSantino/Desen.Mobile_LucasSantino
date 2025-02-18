/*8. Um posto de combustíveis oferece descontos variados com base no tipo de combustível adquirido e na quantidade comprada. O
desconto é aplicado diretamente no valor total, e as condições específicas para cada tipo de combustível devem ser consideradas.
 */


import 'dart:io';

void main() {
  // Solicita os dados ao usuário
  stdout.write('Digite a quantidade de litros comprada: ');
  double litros = double.parse(stdin.readLineSync()!);

  stdout.write('Digite o tipo de combustível (E para Etanol, D para Diesel, G para Gasolina): ');
  String tipoCombustivel = stdin.readLineSync()!.toUpperCase();

  double precoLitro = 0;
  double desconto = 0;
  double valorTotal = 0;

  // Determina o preço do litro e o desconto com base no tipo de combustível e quantidade de litros
  if (tipoCombustivel == 'E') {
    precoLitro = 1.70;
    if (litros >= 15) {
      desconto = 0.04; // Desconto de 4% para Etanol
    } else {
      desconto = 0.03; // Desconto de 3% para Etanol
    }
  } else if (tipoCombustivel == 'D') {
    precoLitro = 2.00;
    if (litros >= 15) {
      desconto = 0.05; // Desconto de 5% para Diesel
    } else {
      desconto = 0.03; // Desconto de 3% para Diesel
    }
  } else if (tipoCombustivel == 'G') {
    precoLitro = 4.50;
    if (litros >= 20) {
      desconto = 0.03; // Desconto de 3% para Gasolina
    } else {
      desconto = 0.0; // Sem desconto para Gasolina abaixo de 20L
    }
  } else {
    print('Tipo de combustível inválido!');
    return;
  }

  // Calcula o valor do desconto
  double valorDesconto = precoLitro * litros * desconto;

  // Calcula o valor total a ser pago
  valorTotal = (precoLitro * litros) - valorDesconto;

  // Exibe o valor a ser pago
  print('\nO valor a ser pago pelo cliente é: R\$ ${valorTotal.toStringAsFixed(2)}');
}
