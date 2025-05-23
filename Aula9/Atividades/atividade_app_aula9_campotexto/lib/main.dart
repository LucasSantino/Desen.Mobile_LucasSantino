import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // função runApp que executa a classe com a Tela do aplicativo
  // MaterialApp permite chamar o widget da tela
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Telaprincipal(),
  ));
}

class Telaprincipal extends StatelessWidget {
  const Telaprincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App aula 09 - Campo texto"),
        backgroundColor: const Color.fromARGB(255, 0, 90, 63),
      ),
      body: Campotexto(),
    );
  }
}

// Classe do tipo Statefull
class Campotexto extends StatefulWidget {
  const Campotexto({super.key});

  @override
  State<Campotexto> createState() => _CampotextoState();
}

class _CampotextoState extends State<Campotexto> {
  // declara variavel do tipo TextEdittingController
  TextEditingController email = TextEditingController();
  TextEditingController nome = TextEditingController();
  TextEditingController idade = TextEditingController();
  TextEditingController numero = TextEditingController();
  TextEditingController cidade = TextEditingController();
  TextEditingController estado = TextEditingController();

  _limpar() {
    setState(() {
      email.text = "";
      nome.text = "";
      idade.text = "";
      numero.text = "";
      cidade.text = "";
      estado.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    // widget coluna
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // children estabelece a relaçao entre os outros componentes do app
      children: [
        // Textfield permite que o usuario insira informações
        TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: "Digite seu email",
            // border parametro que permite estilizar o widget textfield
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8), // Borda com raio de 8
            ),
          ),
          controller: email,
        ),

        TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: "Digite o seu nome",
            // border parametro que permite estilizar o widget textfield
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8), // Borda com raio de 8
            ),
          ),
          controller: nome,
        ),

        TextField(
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          decoration: InputDecoration(
            labelText: "Digite sua idade",
            // border parametro que permite estilizar o widget textfield
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8), // Borda com raio de 8
            ),
          ),
          controller: idade,
        ),

        TextField(
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          decoration: InputDecoration(
            labelText: "Digite o seu numero",
            // border parametro que permite estilizar o widget textfield
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8), // Borda com raio de 8
            ),
          ),
          controller: numero,
        ),

        TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: "Digite o seu cidade",
            // border parametro que permite estilizar o widget textfield
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8), // Borda com raio de 8
            ),
          ),
          controller: cidade,
        ),

        TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: "Digite o seu estado",
            // border parametro que permite estilizar o widget textfield
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8), // Borda com raio de 8
            ),
          ),
          controller: estado,
        ),

        // cria um botao para ao ser pressionado exibir no terminal o que o usuario digita
        // Cria uma Row para permitir colocar um botao do lado do outro
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                print("Email ${email.text}");
                print("Nome: ${nome.text}");
                print("Idade ${idade.text}");
                print("Numero: ${numero.text}");
                print("Cidade ${cidade.text}");
                print("Estado: ${estado.text}");

                setState(() {
                  email.text;
                  nome.text;
                  idade.text;
                  numero.text;
                  cidade.text;
                  estado.text;
                });
              },
              child: Text("Exibir"),
            ),
            ElevatedButton(onPressed: _limpar, child: Text("Limpar")),
          ],
        ),
        Container(
          width: 300,height: 50,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 0, 90, 63),
            borderRadius: BorderRadius.circular(8), 
          ),
          child: Text(
            email.text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),

        Container(
          width: 300,height: 50,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 0, 90, 63),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text("${nome.text} - ${idade.text}",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),

        Container(
          width: 300,height: 50,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 0, 90, 63),
            borderRadius: BorderRadius.circular(8), 
          ),
          child: Text("${nome.text} - ${numero.text}",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),

        Container(
          width: 300,height: 50,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 0, 90, 63),
            borderRadius: BorderRadius.circular(8), 
          ),
          child: Text("${nome.text} - ${cidade.text}",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),

        Container(
          width: 300,height: 50,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 0, 90, 63),
            borderRadius: BorderRadius.circular(8), 
          ),
          child: Text("${nome.text} - ${estado.text}",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}
