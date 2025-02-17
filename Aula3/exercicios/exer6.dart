/*6. Crie um programa que receba a idade de duas pessoas e print na tela qual é a pessoa mais velha.*/

import 'dart:io';

void main() {
  // Recebe as idades das duas pessoas
  stdout.write('Digite a idade da primeira pessoa: ');
  int idade1 = int.parse(stdin.readLineSync()!);

  stdout.write('Digite a idade da segunda pessoa: ');
  int idade2 = int.parse(stdin.readLineSync()!);

  // Compara as idades e exibe quem é a pessoa mais velha
  if (idade1 > idade2) {
    print('A primeira pessoa é a mais velha.');
  } else if (idade2 > idade1) {
    print('A segunda pessoa é a mais velha.');
  } else {
    print('As duas pessoas têm a mesma idade.');
  }
}
