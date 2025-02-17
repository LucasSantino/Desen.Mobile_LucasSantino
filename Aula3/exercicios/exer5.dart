/*5. Crie um programa que receba a nota de dois alunos, calcule sua média e informe se o aluno está aprovado ou reprovado conforme a
média.
Se média for maior ou igual a 7: Aprovado.
Maior ou igual a 4 e menor do que 7: Exame.
Menor do que 4: Reprovado.
*/

import 'dart:io';

void main() {
  // Recebe as notas dos dois alunos
  stdout.write('Digite a primeira nota do aluno: ');
  double nota1 = double.parse(stdin.readLineSync()!);

  stdout.write('Digite a segunda nota do aluno: ');
  double nota2 = double.parse(stdin.readLineSync()!);

  // Calcula a média
  double media = (nota1 + nota2) / 2;

  // Exibe a média
  print('\nA média do aluno é: $media');

  // Verifica a situação do aluno com base na média
  if (media >= 7) {
    print('Status: Aprovado');
  } else if (media >= 4 && media < 7) {
    print('Status: Exame');
  } else {
    print('Status: Reprovado');
  }
}
