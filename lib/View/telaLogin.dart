import 'package:flutter/material.dart';
import 'package:projeto_flutter/View/dashboard.dart';
import 'package:projeto_flutter/View/telaCards.dart';
import 'package:projeto_flutter/models/cadastro_model.dart';

class Telalogin extends StatelessWidget {
  const Telalogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 240, 245), // Cor de fundo alterada
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70.0, right: 280),
              child: Container(
                  child: IconButton(
                icon: Icon(Icons.arrow_back_ios, color: Colors.pink), // Cor do ícone alterada
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dashboard()),
                  );
                },
              )),
            ),
            Center(
              child: Image.asset('assets/images/logo.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.pink), // Cor do texto do rótulo
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                child: TextField(
                  obscureText: true, // Para ocultar a senha
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Senha',
                    labelStyle: TextStyle(color: Colors.pink), // Cor do texto do rótulo
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink, // Cor do botão alterada
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Telacards()),
                );
              },
              child: Text("Login", style: TextStyle(color: Colors.white)), // Cor do texto do botão
            ),
          ],
        ),
      ),
    );
  }
}