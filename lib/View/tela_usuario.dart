import 'package:flutter/material.dart';

class TelaUsuario extends StatelessWidget {
  const TelaUsuario({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil do Usuário'),
        centerTitle: true,
        backgroundColor: Colors.pink, // Cor do AppBar
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.pink[100], // Cor de fundo do Avatar
                child: Image.asset('assets/images/man.png'),
              ),
              SizedBox(height: 20),
              Text(
                'João da Silva',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.pink), // Cor do texto
              ),
              SizedBox(height: 10),
              Text(
                'joao.silva@gmail.com',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Ação para editar perfil
                  print("Botão Editar Perfil pressionado");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink, // Cor do botão
                ),
                child: Text('Editar Perfil'),
              ),
              SizedBox(height: 20),
              Text(
                'Sobre mim',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.pink), // Cor do texto
              ),
              SizedBox(height: 10),
              Text(
                'Sou um verdadeiro amante dos animais e sinto-me abençoado por ter a oportunidade de compartilhar minha vida com eles. Em minha casa, há sempre um ambiente acolhedor e cheio de vida, graças à presença de meus dois gatos e um cachorro.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 255, 240, 245), // Cor de fundo da tela
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: TelaUsuario(),
  ));
}