// biblioteca material que vai permitir a criação dos widgetspara o Flutter no android
import 'package:flutter/material.dart';


// Função principal do app
void main() {
  // runApp função qie constroi o app chamado a classe do tipo Stateless
  runApp(const Telapp());
}

class Telapp extends StatelessWidget {
  const Telapp({super.key});

// overwrite é o polimorfismo, permite tratar os objetos de diferentes formas
  @override
  Widget build(BuildContext context) {
    // MaterialApp faz parte do design do aplicativo
    return MaterialApp(
      home: Column(
        // Alinhamento primario
        //mainAxisAlignment: MainAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Container(width: 300, height: 100,color: Colors.blue),
        ],
      ),
    );
  }
}
