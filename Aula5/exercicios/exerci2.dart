/*2. Crie uma classe “Filha” com o tipo de animal pássaro, cachorro, tigre, peixe e o atributo:
peso, métodos acordou, dormiu.*/

// Classe Animal (classe mãe)
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

// Classe filha para o tipo de Animal Pássaro, Cachorro, Tigre, Peixe
class AnimalFilho extends Animal {
  // Atributo adicional de peso
  double peso;

  // Construtor que chama o construtor da classe mãe
  AnimalFilho(String nome, int idade, String cor, String raca, this.peso) : super(nome, idade, cor, raca);

  // Métodos acordou e dormiu
  void acordou() {
    print("$nome acordou!");
  }

  void dormiu() {
    print("$nome dormiu!");
  }
}

void main() {
  // Criando objetos para diferentes tipos de animais
  var passarinho = AnimalFilho("Passarinho", 1, "Amarelo", "Canário", 0.05);
  var cachorro = AnimalFilho("Rex", 5, "Marrom", "Labrador", 20.0);
  var tigre = AnimalFilho("Tigre", 3, "Laranja", "Siberiano", 180.0);
  var peixe = AnimalFilho("Peixinho", 2, "Azul", "Betta", 0.1);

  // Exibindo informações e chamando os métodos
  passarinho.exibirInformacoes();
  passarinho.acordou();
  passarinho.dormiu();
  
  cachorro.exibirInformacoes();
  cachorro.acordou();
  cachorro.dormiu();
  
  tigre.exibirInformacoes();
  tigre.acordou();
  tigre.dormiu();
  
  peixe.exibirInformacoes();
  peixe.acordou();
  peixe.dormiu();
}
