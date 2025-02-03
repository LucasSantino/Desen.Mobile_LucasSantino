// importando a biblioteca do dart
import 'dart:io';

void main(){ // Função Principal 
  print('Digite n1:');
  // double - números de ponto flutuante (ou seja, números que podem ter uma parte decimal).
  double num1 = double.parse(stdin. readLineSync()!); // input dos dados 
  print("Digite n2: ");
  double num2 = double.parse(stdin.readLineSync()!); // input dos dados
  double res = num1 *num2;
  print("Res= $res");

}