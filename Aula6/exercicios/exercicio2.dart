/*
2. Crie duas subclasses concretas de máquina industrial Prensa e Robô solda.
Prensa deve ter um atributo adicional chamado “Pressão em toneladas” e os métodos ligar 
e desligar devem exibir mensagens adequadas.
Robô solda deve ter um atributo chamado tipo de solda(String) para especificar o tipo de 
solda que realiza. Os métodos ligar e desligar devem exibir mensagens adequadas.
*/

// Classe abstrata representando uma Máquina Industrial
abstract class MaquinaIndustrial {
  void ligar();
  void desligar();
}

// Subclasse Prensa
class Prensa extends MaquinaIndustrial {
  double pressaoEmToneladas;

  Prensa(this.pressaoEmToneladas);

  @override
  void ligar() {
    print("Prensa ligada com pressão de $pressaoEmToneladas toneladas.");
  }

  @override
  void desligar() {
    print("Prensa desligada.");
  }
}

// Subclasse Robô Solda
class RoboSolda extends MaquinaIndustrial {
  String tipoDeSolda;

  RoboSolda(this.tipoDeSolda);

  @override
  void ligar() {
    print("Robô de solda ligado. Tipo de solda: $tipoDeSolda.");
  }

  @override
  void desligar() {
    print("Robô de solda desligado.");
  }
}

// Exemplo de uso
void main() {
  Prensa prensa = Prensa(50.0);
  prensa.ligar();
  prensa.desligar();

  RoboSolda roboSolda = RoboSolda("MIG");
  roboSolda.ligar();
  roboSolda.desligar();
}