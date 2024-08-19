import 'package:counter_app/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          //Añadir separacion a la carta
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [CustomCard()],
        ));
  }
}
