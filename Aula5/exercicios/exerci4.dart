/*
4. Crie uma classe denominada “Produtos” com os seguintes
parâmetros:
Nome do produto
Quantidade
Preço do produto
Tipo de comunicação
Consumo de energia elétrica
Essa classe de produtos deve ser a mãe de outras classes como
fritadeira, televisão, ar-condicionado.
As classes filhas devem possuir os seguintes métodos – Ligar,
desligar, ajuste de temperatura com passagem de parâmetros para
setpoint. */

// Classe Produtos (classe mãe)
class Produto {
  // Atributos da classe Produto
  String nome;
  int quantidade;
  double preco;
  String tipoComunicacao;
  double consumoEnergia;

  // Construtor
  Produto(this.nome, this.quantidade, this.preco, this.tipoComunicacao, this.consumoEnergia);

  // Método para exibir as informações do produto
  void exibirInformacoes() {
    print("Nome do Produto: $nome");
    print("Quantidade: $quantidade");
    print("Preço: R\$ $preco");
    print("Tipo de Comunicação: $tipoComunicacao");
    print("Consumo de Energia Elétrica: $consumoEnergia kWh");
  }
}

// Classe Fritadeira (herda de Produtos)
class Fritadeira extends Produto {
  // Atributo adicional para a temperatura
  double temperatura;

  // Construtor que herda os parâmetros da classe mãe
  Fritadeira(String nome, int quantidade, double preco, String tipoComunicacao, double consumoEnergia, this.temperatura)
      : super(nome, quantidade, preco, tipoComunicacao, consumoEnergia);

  // Método para ligar a fritadeira
  void ligar() {
    print("$nome foi ligada.");
  }

  // Método para desligar a fritadeira
  void desligar() {
    print("$nome foi desligada.");
  }

  // Método para ajustar a temperatura (setpoint)
  void ajusteTemperatura(double novaTemperatura) {
    temperatura = novaTemperatura;
    print("A temperatura da $nome foi ajustada para $temperatura°C.");
  }
}

// Classe Televisao (herda de Produtos)
class Televisao extends Produto {
  // Atributo adicional para o volume
  int volume;

  // Construtor que herda os parâmetros da classe mãe
  Televisao(String nome, int quantidade, double preco, String tipoComunicacao, double consumoEnergia, this.volume)
      : super(nome, quantidade, preco, tipoComunicacao, consumoEnergia);

  // Método para ligar a televisão
  void ligar() {
    print("$nome foi ligada.");
  }

  // Método para desligar a televisão
  void desligar() {
    print("$nome foi desligada.");
  }

  // Método para ajustar o volume (não relacionado ao ajuste de temperatura)
  void ajusteVolume(int novoVolume) {
    volume = novoVolume;
    print("O volume da $nome foi ajustado para $volume.");
  }
}

// Classe ArCondicionado (herda de Produtos)
class ArCondicionado extends Produto {
  // Atributo adicional para a temperatura
  double temperatura;

  // Construtor que herda os parâmetros da classe mãe
  ArCondicionado(String nome, int quantidade, double preco, String tipoComunicacao, double consumoEnergia, this.temperatura)
      : super(nome, quantidade, preco, tipoComunicacao, consumoEnergia);

  // Método para ligar o ar condicionado
  void ligar() {
    print("$nome foi ligado.");
  }

  // Método para desligar o ar condicionado
  void desligar() {
    print("$nome foi desligado.");
  }

  // Método para ajustar a temperatura (setpoint)
  void ajusteTemperatura(double novaTemperatura) {
    temperatura = novaTemperatura;
    print("A temperatura do $nome foi ajustada para $temperatura°C.");
  }
}

void main() {
  // Criando objetos para os produtos
  var minhaFritadeira = Fritadeira("Fritadeira Elétrica", 2, 350.0, "Controle Remoto", 1.0, 180.0);
  var minhaTelevisao = Televisao("Televisão 4K", 1, 1500.0, "Wi-Fi", 0.2, 50);
  var meuArCondicionado = ArCondicionado("Ar Condicionado Split", 1, 2500.0, "Controle Remoto", 1.5, 22.0);

  // Exibindo as informações dos produtos
  minhaFritadeira.exibirInformacoes();
  minhaTelevisao.exibirInformacoes();
  meuArCondicionado.exibirInformacoes();

  // Usando os métodos das classes filhas
  minhaFritadeira.ligar();
  minhaFritadeira.ajusteTemperatura(200.0);
  minhaFritadeira.desligar();

  minhaTelevisao.ligar();
  minhaTelevisao.ajusteVolume(30);
  minhaTelevisao.desligar();

  meuArCondicionado.ligar();
  meuArCondicionado.ajusteTemperatura(18.0);
  meuArCondicionado.desligar();
}
