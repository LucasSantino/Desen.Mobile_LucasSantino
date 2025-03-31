/*
6. Crie métodos abstratos na classe abstrata como colocar o cinto, ligar o carro, desligar o 
carro e dirigir.
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
  void colocarCinto(); 
  void ligarCarro(); 
  void desligarCarro(); 
  void dirigir(); 

  // Método para exibir as informações do automóvel
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

  // Implementação dos métodos acelerar, frear, colocar cinto, ligar, desligar e dirigir o carro:
  @override
  void acelerar() {
    print("$nome está acelerando!");
  }

  @override
  void frear() {
    print("$nome está freando.");
  }

  @override
  void colocarCinto() {
    print("Cinto de segurança colocado no $nome.");
  }

  @override
  void ligarCarro() {
    print("$nome foi ligado.");
  }

  @override
  void desligarCarro() {
    print("$nome foi desligado.");
  }

  @override
  void dirigir() {
    print("$nome está sendo dirigido.");
  }
}

void main() {
  Carro meuCarro = Carro("Gol", "Prata", 2015);

  
  meuCarro.mostrarInformacoes();

  // Chamando os métodos do carro
  meuCarro.colocarCinto();
  meuCarro.ligarCarro();
  meuCarro.acelerar();
  meuCarro.dirigir();
  meuCarro.frear();
  meuCarro.desligarCarro();
}
