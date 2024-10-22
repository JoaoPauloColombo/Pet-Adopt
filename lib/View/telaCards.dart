import 'package:flutter/material.dart';
import 'package:projeto_flutter/View/cadastro_pet.dart';
import 'package:projeto_flutter/View/dashboard.dart';
import 'package:projeto_flutter/View/telaLogin.dart';
import 'package:projeto_flutter/View/tela_usuario.dart';
import 'package:projeto_flutter/mock/cards_fake_db.dart';
import 'package:projeto_flutter/widgets/card_pet.dart';

class Telacards extends StatelessWidget {
  const Telacards({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 240, 245), // Cor de fundo alterada
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  color: Colors.pink, // Cor do cabeçalho alterada
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Pet Adopt",
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white), // Cor do texto alterada
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 145.0),
                        child: Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.arrow_back_ios, color: Colors.white), // Cor do ícone alterada
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Dashboard()),
                                );
                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.person_rounded, color: Colors.white), // Cor do ícone alterada
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TelaUsuario()),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Pesquisar',
                    border: OutlineInputBorder(),
                    fillColor: Colors.white, // Cor de fundo do campo de pesquisa
                    filled: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Pets",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink, // Cor do texto alterada
                      ),
                    ),
                    Icon(Icons.pets, color: Colors.pink), // Cor do ícone alterada
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GridView.builder(
                            shrinkWrap: true,
                            primary: false,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: appProducts.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 0.8,
                              crossAxisSpacing: 20.0,
                              mainAxisSpacing: 20.0,
                            ),
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                  child: card_pets(pet: appProducts[index]));
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                    width: double.infinity,
                    color: Colors.pink, // Cor do rodapé alterada
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            "Você realmente não pode manter esse animal?",
                            style: TextStyle(color: Colors.black), // Cor do texto alterada
                          ),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Telalogin()),
                                );
                              },
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CadastroPet()),
                                  );
                                },
                                child: Text(
                                  "Divulgue",
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ))
                        ],
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
