/*
1. Crie uma classe abstrata “Máquina industrial” com os seguintes métodos:
Nome – Nome da máquina
Potência da máquina
Status – booleano
Métodos abstratos
Ligar() – Um método abstrato que define como a máquina é ligada
Desligar () – Método abstrato que define como a máquina é desligada
*/

// Classe abstrata Máquina Industrial
abstract class MaquinaIndustrial {
  // Atributos da classe
  String nome;    
  double potencia; 
  bool status;     

  // Construtor para inicializar a máquina 
  MaquinaIndustrial(this.nome, this.potencia, this.status);

  // Métodos para obter o nome, potência e status 
  String getNome() {
    return nome;
  }

  double getPotencia() {
    return potencia;
  }

  bool getStatus() {
    return status;
  }

  // Métodos abstratos: as subclasses devem implementar esses métodos.
  void ligar();    
  void desligar(); 
}


class Fresadora extends MaquinaIndustrial {
  // Construtor da subclasse Fresadora
  Fresadora(String nome, double potencia, bool status)
      : super(nome, potencia, status); // Chama o construtor da classe pai

  // Implementação do método ligar (define como a máquina é ligada)
  @override
  void ligar() {
    status = true;  // Atualiza o status para "ligada"
    print("$nome está ligada."); 
  }

  // Implementação do método desligar (define como a máquina é desligada)
  @override
  void desligar() {
    status = false; // Atualiza o status para "desligada"
    print("$nome está desligada."); 
  }
}

void main() {
  // Criando uma instância da classe Fresadora (subclasse de MaquinaIndustrial)
  MaquinaIndustrial maquina = Fresadora("Fresadora XYZ", 2000.0, false);

  
  print("Nome da máquina: ${maquina.getNome()}");
  print("Potência da máquina: ${maquina.getPotencia()}W");
  print("Status da máquina: ${maquina.getStatus()}");

 
  maquina.ligar();

  
  maquina.desligar();
}



