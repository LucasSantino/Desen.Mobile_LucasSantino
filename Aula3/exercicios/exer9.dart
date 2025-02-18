/*9. Escreva um programa que calcule o preço a pagar pelo fornecimento de energia elétrica.
● Pergunte para o usuário a quantidade de kWh consumida e o tipo de instalação: Residência (R), Indústrias (I), Comércio (C).
● Calcule o preço da energia com base na tabela a seguir.
● O preço a pagar pelo fornecimento da energia elétrica deve ser calculado preço unitário do KWh * quantidade de KWh inserido
pelo usuário */

import 'dart:io';

void main() {
  // Solicita os dados do usuário
  stdout.write('Digite a quantidade de kWh consumido: ');
  double kWh = double.parse(stdin.readLineSync()!);

  stdout.write('Digite o tipo de instalação (R para Residencial, I para Industrial, C para Comércio): ');
  String tipoInstalacao = stdin.readLineSync()!.toUpperCase();

  double precoUnitario = 0;
  double valorTotal = 0;

  // Determina o preço unitário baseado no tipo de instalação e faixa de consumo
  if (tipoInstalacao == 'R') {
    // Residencial
    if (kWh <= 500) {
      precoUnitario = 0.50;
    } else if (kWh <= 1000) {
      precoUnitario = 0.65;
    } else {
      precoUnitario = 0.60;
    }
  } else if (tipoInstalacao == 'I') {
    // Industrial
    if (kWh <= 5000) {
      precoUnitario = 0.55;
    } else {
      precoUnitario = 0.50;
    }
  } else if (tipoInstalacao == 'C') {
    // Comercial
    // Considerando que não foi fornecido uma tabela específica para Comercial, podemos definir um valor fixo
    precoUnitario = 0.60;  // Assumindo preço fixo para Comercial
  } else {
    print('Tipo de instalação inválido!');
    return;
  }

  // Calcula o valor total
  valorTotal = precoUnitario * kWh;

  // Exibe o valor total a ser pago
  print('\nO valor a ser pago pela energia elétrica é: R\$ ${valorTotal.toStringAsFixed(2)}');
}
