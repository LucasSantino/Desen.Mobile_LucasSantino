// importa a biblioteca dart:io
import 'dart:io'; // Permite que o usario entrar com dados

void main(){  /// Função Principal
print("Digite seu nome"); // Exibe a mensagem solicitando que o usario digite o seu nome
// Digite o seu nome
// null safety
// só ira converter o dado se a entrada não for vazia
String nome =stdin.readLineSync()!; // input dos dados
print("Digite sua idade");
String idade =stdin.readLineSync()!;

print("Nome: $nome idade: $idade");


}