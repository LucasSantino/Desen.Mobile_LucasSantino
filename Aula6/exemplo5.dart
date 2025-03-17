/*
Correção exercício 4 aula 05
Criar uma classe produtos com alguns atributos conforme enunciado
10.03.2025
*/

// Cria a classe Produtos
class Produtos {
  String nome;
  int qtde;
  double preco;
  String tipo_comun;
  double consumo_kw;

  // Cria o construtor
  Produtos(this.nome, this.qtde, this.preco, this.tipo_comun, this.consumo_kw);

  // Cria método para ligar o produto
  void ligar() {
    print("Produto ligado");
  }
}

// Classe chamada Fritadeira
class Fritadeira extends Produtos {
  // Construtor herdando parâmetros da classe pai
  Fritadeira(String nome, int qtde, double preco, String tipo_comun, double consumo_kw)
      : super(nome, qtde, preco, tipo_comun, consumo_kw);

  // Polimorfismo Override
  @override
  void ligar() {
    print("Fritadeira ${nome} ligada");
  }

  void desligar() {
    print("Fritadeira ${nome} desligada");
  }

  void ajustatemp(int temp) {
    // Usando a variável setpoint para controlar a temperatura
    int setpoint = 250;
    if (temp >= setpoint) {
      print("Temperatura ajustada para $setpoint°C");
    } else {
      while (temp < setpoint) {
        temp = temp + 10;
        print("Ajustando temperatura: $temp°C");
      }
      print("Temperatura ajustada para $setpoint°C");
    }
  }
}

// Classe chamada ArCondicionado
class ArCondicionado extends Produtos {
  ArCondicionado(String nome, int qtde, double preco, String tipo_comun, double consumo_kw)
      : super(nome, qtde, preco, tipo_comun, consumo_kw);

  @override
  void ligar() {
    print("Ar condicionado ligado");
  }

  void desligar() {
    print("Ar condicionado desligado");
  }

  void ajustatemp(int temp) {
    // Usando a variável setpoint para controlar a temperatura
    int setpoint = 22;
    if (temp == setpoint) {
      print("Temperatura já está ajustada para $setpoint°C");
    } else {
      while (temp < setpoint) {
        temp = temp + 2;
        print("Ajustando temperatura: $temp°C");
      }
      print("Temperatura ajustada para $setpoint°C");
    }
  }
}

void main() {
  Fritadeira Philips = Fritadeira("Philips", 1, 800.0, "Wifi", 1.4);
  Philips.ligar();
  Philips.ajustatemp(100);

  ArCondicionado LG = ArCondicionado("LG", 1, 3500.0, "Bluetooth", 3.5);
  LG.ligar();
  LG.ajustatemp(0);
}
