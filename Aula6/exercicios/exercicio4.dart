/*
4 Crie uma classe abstrata chamada “Automóveis” com nome, cor, ano como atributos. 
*/

// Classe abstrata Automóveis
abstract class Automoveis {
  // Atributos
  String nome;
  String cor;
  int ano;

  // Construtor da classe abstrata
  Automoveis(this.nome, this.cor, this.ano);

  // Métodos abstratos
  void acelerar();  // Método para acelerar o automóvel
  void frear();     // Método para frear o automóvel

  // Método para exibir as informações do automóvel
  void mostrarInformacoes() {
    print("Nome: $nome");
    print("Cor: $cor");
    print("Ano: $ano");
  }
}

// Exemplo de uma subclasse que herda de Automoveis
class Carro extends Automoveis {
  // Construtor da classe Carro
  Carro(String nome, String cor, int ano) : super(nome, cor, ano);

  // Implementação do método acelerar
  @override
  void acelerar() {
    print("$nome está acelerando!");
  }

  // Implementação do método frear
  @override
  void frear() {
    print("$nome está freando.");
  }
}

void main() {
  // Criando uma instância do carro
  Automoveis carro = Carro("Fusca", "Azul", 1969);

  // Exibindo informações do carro
  carro.mostrarInformacoes();

  // Acelerando e freando o carro
  carro.acelerar();
  carro.frear();
}
