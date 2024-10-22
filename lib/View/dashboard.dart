import 'package:flutter/material.dart';
import 'package:projeto_flutter/View/telaLogin.dart';
import 'package:projeto_flutter/models/cadastro_model.dart';

class Dashboard extends StatelessWidget {
  Dashboard({super.key});

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<CadastroModel> cadastros = [];

    void salvaInfo() {
      cadastros.add(CadastroModel(
          nome: nameController.text,
          email: emailController.text,
          senha: senhaController.text));
    }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 240, 245), // Cor de fundo sólida
      body: Center( // Centraliza todos os elementos
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centraliza verticalmente
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Image.asset('assets/images/logo.png'),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Nome',
                        labelStyle: TextStyle(color: Colors.pink), // Cor do rótulo
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.pink), // Cor do rótulo
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                    child: TextField(
                      controller: senhaController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Senha',
                        labelStyle: TextStyle(color: Colors.pink), // Cor do rótulo
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(200, 40),
                        backgroundColor: Colors.pink, // Cor do botão
                      ),
                      onPressed: () {
                        if (nameController.text.isEmpty ||
                            emailController.text.isEmpty ||
                            senhaController.text.isEmpty) {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Erro"),
                                content: Text("Por favor, cadastre pelo menos 1 usuário!"),
                                actions: [
                                  TextButton(
                                    child: Text("OK"),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        } else {
                          salvaInfo();
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Telalogin(),
                            ),
                          );
                        }
                      },
                      child: Text("Cadastrar"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center, // Centraliza horizontalmente
                      children: [
                        Text("Já possui uma conta?   "),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Telalogin()),
                            );
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}