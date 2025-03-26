/*
5 Crie uma classe chamada “Carro” herdando características da classe abstrata 
“Automóveis”... 
*/

// Classe abstrata Automoveis
abstract class Automoveis {
  String nome;
  String cor;
  int ano;

  // Construtor da classe abstrata
  Automoveis(this.nome, this.cor, this.ano);

  // Métodos abstratos
  void acelerar(); 
  void frear(); 


  void mostrarInformacoes() {
    print("Nome: $nome");
    print("Cor: $cor");
    print("Ano: $ano");
  }
}

// Classe Carro herdando de Automoveis
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
  // Criando uma instância de Carro
  Carro meuCarro = Carro("Gol", "Prata", 2015);


  meuCarro.mostrarInformacoes();

  meuCarro.acelerar();
  meuCarro.frear();
}
