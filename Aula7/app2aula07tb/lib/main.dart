import 'package:flutter/material.dart';

void main() {
  runApp(Telapp());
}

class Telapp extends StatelessWidget {
  const Telapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white, // Cor de fundo
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aplicativo Teste 2 - Lucas Santino'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centralizando os widgets na tela
          children: [
            // Primeiro Container
            Container(width: 400,height: 150,color: Colors.blue,
            child: Center(
              child: Text("Projeto2",textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white,fontSize: 30,decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20), // Espaço entre os widgets

            // Botão
            ElevatedButton(
              onPressed: () {
                print("Desenvolvimento Mobile 1");
              },
              child: Text("Entrar"),
            ),
            SizedBox(height: 20), // Espaço entre os widgets
          ],
        ),
      ),
    );
  }
}
