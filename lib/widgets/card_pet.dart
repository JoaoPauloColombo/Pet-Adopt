import 'package:flutter/material.dart';
import 'package:projeto_flutter/View/card_detalhe_pet.dart';
import 'package:projeto_flutter/models/card_pet.dart';

class card_pets extends StatelessWidget {
  final CardModel pet;
  const card_pets({super.key, required this.pet});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 140,
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(),
          borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
           InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CardDetalhePet(
                    pet: pet,
                  ),
                ),
              );
            },
            child: Image.asset(
              pet.imagem,
              height: 80,
              fit: BoxFit.fill,
            ),
          ),
          Text(
            pet.raca,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            pet.sexo,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(Icons.favorite_border)
        ],
      ),
    );
  }
}
