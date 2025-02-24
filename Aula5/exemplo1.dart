/*
Exemplo 1 - Programação oreintada a objeto 24.02.2025
*/

// Cria a classe chamada casa
class Casa {
  String? cor; //faz parte do null safety do dart
  int? qtde_p;

  /// Cria o metodo chamado abrirporta
  void abrirporta() {
    print("A porta esta aberta");
  }
}

void main() {
  // instancia o  objeto chamado chamado minhaCasa
  Casa minhaCasa = Casa();
  minhaCasa.cor = "Azul";
  minhaCasa.qtde_p = 2;
  minhaCasa.abrirporta();
  print("Cor da casa ${minhaCasa.cor}");
  print("Quantidade de portas: ${minhaCasa.qtde_p}");
}
