//1. Crie uma função que receba as informações de um usuário digitado pelo teclado: Nome, Curso, Idade.

import 'dart:io';

void receberInformacoes() {
  // Receber o nome do usuário
  stdout.write('Digite o seu nome: ');
  String nome = stdin.readLineSync()!;

  // Receber o curso do usuário
  stdout.write('Digite o seu curso: ');
  String curso = stdin.readLineSync()!;

  // Receber a idade do usuário
  stdout.write('Digite a sua idade: ');
  int idade = int.parse(stdin.readLineSync()!);

  // Exibir as informações recebidas
  print('\nInformações do Usuário:');
  print('Nome: $nome');
  print('Curso: $curso');
  print('Idade: $idade anos');
}

void main() {
  receberInformacoes();
}
