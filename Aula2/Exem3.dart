// importa a biblioteca dart:io
import 'dart:io';

void main(){ // Função Principal ///
  print("Digite o primeiro numero");

  // int. parse faz a conversao
  var num1 = stdin.readLineSync()!; // input dos dados
  print("Digite o segundo numero");
  var num2 = stdin.readLineSync()!;
int  res = int.parse(num1)+ int.parse(num2);
print("Resultado = $res");
  
}