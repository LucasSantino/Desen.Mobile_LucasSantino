/*1. Crie uma classe mãe chamada “Animal” com os atributos:
String nome, int idade, String cor, String raça.*/


class Animal {
  // Atributos
  String nome;
  int idade;
  String cor;
  String raca;

  // Construtor
  Animal(this.nome, this.idade, this.cor, this.raca);

  // Método para exibir as informações
  void exibirInformacoes() {
    print("Nome: $nome");
    print("Idade: $idade");
    print("Cor: $cor");
    print("Raça: $raca");
  }
}

void main() {
  // Criando um objeto da classe Animal
  var meuAnimal = Animal("Layla", 5, "Marrom", "Pastor Alemão");
  
  // Exibindo informações do animal
  meuAnimal.exibirInformacoes();
}
