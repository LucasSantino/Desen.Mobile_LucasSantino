/* 10. Crie um programa que receba 4 valores numéricos digitados pelo usuário. Em seguida, permita que o usuário escolha a
operação que deseja realizar entre as seguintes opções: soma (+), subtração (-), multiplicação (*) e divisão (/).
 */


import 'dart:io';

void main() {
  // Solicita os 4 valores numéricos ao usuário
  stdout.write('Digite o primeiro valor: ');
  double valor1 = double.parse(stdin.readLineSync()!);

  stdout.write('Digite o segundo valor: ');
  double valor2 = double.parse(stdin.readLineSync()!);

  stdout.write('Digite o terceiro valor: ');
  double valor3 = double.parse(stdin.readLineSync()!);

  stdout.write('Digite o quarto valor: ');
  double valor4 = double.parse(stdin.readLineSync()!);

  // Exibe as opções de operação
  print('\nEscolha a operação desejada:');
  print('Soma (+)');
  print('Subtração (-)');
  print('Multiplicação (*)');
  print('Divisão (/)');

  // Solicita a escolha da operação
  stdout.write('Digite a operação (+, -, *, /): ');
  String operacao = stdin.readLineSync()!;

  double resultado;

  // Realiza a operação com base na escolha do usuário
  switch (operacao) {
    case '+':
      resultado = valor1 + valor2 + valor3 + valor4;
      print('\nResultado da soma: $resultado');
      break;
    case '-':
      resultado = valor1 - valor2 - valor3 - valor4;
      print('\nResultado da subtração: $resultado');
      break;
    case '*':
      resultado = valor1 * valor2 * valor3 * valor4;
      print('\nResultado da multiplicação: $resultado');
      break;
    case '/':
      if (valor2 != 0 && valor3 != 0 && valor4 != 0) {
        resultado = valor1 / valor2 / valor3 / valor4;
        print('\nResultado da divisão: $resultado');
      } else {
        print('\nErro: Não é possível dividir por zero.');
      }
      break;
    default:
      print('Operação inválida.');
  }
}
