/*3. Crie uma função que calcule o salário líquido do usuário a partir dos valores digitados pelo teclado considerando um desconto de 10% de
impostos e bonificação de 20% em cima do salário.*/

import 'dart:io';

// Função para calcular o salário líquido
double calcularSalarioLiquido() {
  // Receber o salário bruto
  stdout.write('Digite o seu salário bruto (em reais): ');
  double salarioBruto = double.parse(stdin.readLineSync()!);

  // Calculo d desconto de 10% de impostos
  double descontoImpostos = salarioBruto * 0.10;

  // Calculo da onificação de 20%
  double bonificacao = salarioBruto * 0.20;

  // Calculo o salário líquido
  double salarioLiquido = salarioBruto - descontoImpostos + bonificacao;

  // Retornar o valor do salário líquido
  return salarioLiquido;
}

void main() {
  // Chamar a função e imprimir o resultado
  double salarioLiquido = calcularSalarioLiquido();
  print('\n O salario salário líquido sera de : R\$ $salarioLiquido');
}
