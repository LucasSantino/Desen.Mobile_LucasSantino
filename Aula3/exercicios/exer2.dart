// 2. Crie uma função que calcule a área de um triângulo a partir de dados digitados pelo usuário. A = (b* h)/2 e retorne esse valor.


import 'dart:io'; // Importando o pacote necessário para usar stdin e stdout

// Função para calcular a área do triângulo
double calcularAreaTriangulo() {
  // Receber a base do triângulo
  stdout.write('Digite a base do triângulo: ');
  double base = double.parse(stdin.readLineSync()!);

  // Receber a altura do triângulo
  stdout.write('Digite a altura do triângulo: ');
  double altura = double.parse(stdin.readLineSync()!);

  // Calculo da área
  double area = (base * altura) / 2;

  // Retornar o valor da área
  return area;
}

void main() {
  // Chamar a função e imprimir o resultado
  double area = calcularAreaTriangulo();
  print('\nA área do triângulo é: $area unidades quadradas');
}

