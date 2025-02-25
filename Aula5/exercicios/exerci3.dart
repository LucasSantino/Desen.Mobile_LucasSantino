/* 3. Crie uma classe denominada “Máquinas” com os seguintes atributos:
Nome da máquina
Quantidade de eixos
Rotações por minuto
Consumo de energia elétrica
Essa classe deve ser a mãe de outras classes.
Criar classe denominada furadeira herdando o nome da máquina, rotações por minuto,
consumo de energia elétrica.
Criar métodos para ligar, desligar a máquina e um método para ajustar a velocidade de
rotação da máquina. */

// Classe Máquinas (classe mãe)
class Maquina {
  // Atributos da classe Máquina
  String nome;
  int quantidadeEixos;
  int rotacoesPorMinuto;
  double consumoEnergia;

  // Construtor
  Maquina(this.nome, this.quantidadeEixos, this.rotacoesPorMinuto, this.consumoEnergia);

  // Método para exibir as informações da máquina
  void exibirInformacoes() {
    print("Nome da Máquina: $nome");
    print("Quantidade de Eixos: $quantidadeEixos");
    print("Rotações por Minuto: $rotacoesPorMinuto");
    print("Consumo de Energia Elétrica: $consumoEnergia kWh");
  }
}

// Classe Furadeira (herda de Máquinas)
class Furadeira extends Maquina {
  // Construtor que herda os parâmetros da classe mãe
  Furadeira(String nome, int quantidadeEixos, int rotacoesPorMinuto, double consumoEnergia)
      : super(nome, quantidadeEixos, rotacoesPorMinuto, consumoEnergia);

  // Método para ligar a máquina
  void ligar() {
    print("$nome foi ligada.");
  }

  // Método para desligar a máquina
  void desligar() {
    print("$nome foi desligada.");
  }

  // Método para ajustar a velocidade de rotação
  void ajustarVelocidade(int novaRotacao) {
    rotacoesPorMinuto = novaRotacao;
    print("A velocidade da $nome foi ajustada para $rotacoesPorMinuto rotações por minuto.");
  }
}

void main() {
  // Criando um objeto de Furadeira
  var minhaFuradeira = Furadeira("Furadeira Elétrica", 3, 1500, 1.2);

  // Exibindo as informações da furadeira
  minhaFuradeira.exibirInformacoes();
  
  // Ligando e desligando a furadeira
  minhaFuradeira.ligar();
  minhaFuradeira.ajustarVelocidade(2000);
  minhaFuradeira.desligar();
}
