/*
Exemplo 07 Construtor 
24.02.2025
*/

class Fruta {
  String sabor;
  String nome;
  String cor;
  double peso;
  int diasDesdecolheita;
  bool isMadura = false;

  // Cria contrutor

  Fruta(this.sabor, this.nome, this.cor, this.peso, this.diasDesdecolheita);

// Metodo para verificar se oa fruta esta madura
  void verificaMaturidade(int diasParaMaturidade) {
    if (diasDesdecolheita >= diasParaMaturidade) {
      print(" A $nome esta madura");
      isMadura = true;
    } else {
      print(" A $nome não esta madura");
    }
  }
}

void main() {
  Fruta manga = Fruta("Doce", "Manga", "Amarela", 1.2, 5);
  manga.verificaMaturidade(4);
}
