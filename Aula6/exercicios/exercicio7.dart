/*
7. Crie uma classe concreta “Carro” implementando os métodos abstratos exibindo 
mensagens adequadas.
*/

// Classe abstrata Automoveis
abstract class Automoveis {
  // Atributos
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

// Classe concreta Carro implementando os métodos abstratos
class Carro extends Automoveis {
  // Construtor da classe Carro
  Carro(String nome, String cor, int ano) : super(nome, cor, ano);

  // Implementação dos métodos
  @override
  void acelerar() {
    print("O carro $nome está ganhando velocidade!");
  }

  @override
  void frear() {
    print("O carro $nome está reduzindo a velocidade.");
  }

  @override
  void colocarCinto() {
    print("Cinto de segurança colocado. Segurança em primeiro lugar!");
  }

  @override
  void ligarCarro() {
    print("O carro $nome foi ligado. Pronto para rodar!");
  }

  @override
  void desligarCarro() {
    print("O carro $nome foi desligado.");
  }

  @override
  void dirigir() {
    print("O carro $nome está em movimento. Boa viagem!");
  }
}

void main() {
  // Criando uma instância de Carro
  Carro meuCarro = Carro("Civic", "Preto", 2022);

  
  meuCarro.mostrarInformacoes();

 
  meuCarro.colocarCinto();
  meuCarro.ligarCarro();
  meuCarro.acelerar();
  meuCarro.dirigir();
  meuCarro.frear();
  meuCarro.desligarCarro();
}
