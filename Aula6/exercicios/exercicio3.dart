/*
3.  Crie a classe “Pessoa” com getters e setters para o nome e idade da pessoa. Os setters 
permitem configurar esses atributos com verificações de validade. A classe também possui 
um método para mostrar informações para exibir as informações da pessoa. 
*/

class Pessoa {
  // Atributos privados
  String _nome;
  int _idade;

  // Construtor da classe Pessoa
  Pessoa(this._nome, this._idade);

  // Getter para o nome
  String get nome => _nome;

  // Setter para o nome com verificação de validade
  set nome(String nome) {
    if (nome.isNotEmpty) {
      _nome = nome;
    } else {
      print("Nome não pode ser vazio.");
    }
  }

  // Getter para a idade
  int get idade => _idade;

  // Setter para a idade com verificação de validade
  set idade(int idade) {
    if (idade >= 0) {
      _idade = idade;
    } else {
      print("Idade não pode ser negativa.");
    }
  }

  // Método para exibir as informações da pessoa
  void mostrarInformacoes() {
    print("Nome: $_nome");
    print("Idade: $_idade");
  }
}

void main() {
  // Criando uma instância de Pessoa
  Pessoa pessoa = Pessoa("João", 25);

  // Exibindo informações da pessoa
  pessoa.mostrarInformacoes();

  // Tentando alterar o nome e a idade com valores válidos e inválidos
  pessoa.nome = "Carlos";
  pessoa.idade = 30;

  // Exibindo novamente as informações da pessoa
  pessoa.mostrarInformacoes();

  // Testando as verificações de validade
  pessoa.nome = ""; // Nome inválido
  pessoa.idade = -5; // Idade inválida
}
