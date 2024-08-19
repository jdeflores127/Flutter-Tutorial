import 'package:counter_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Column(
            children: [
              const ListTile(
                leading: Icon(Icons.accessible_forward_rounded),
                title: Text('titulo de la carta'),
                subtitle:
                    Text('hola soy un texto que tiene la carta de ejemplo'),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () => {},
                      child: const Text('cancel'),
                    ),
                    TextButton(onPressed: () => {}, child: const Text('ok'))
                  ],
                ),
              ),
            ],
          ),
        ),
        const CustomCardImage(
          imageUrl:
              'https://cdn.superaficionados.com/imagenes/4-kirigakure-cke.jpg',
          nombreTarjeta: 'Aldea Oculta entre la lluvia'
          //'https://vignette.wikia.nocookie.net/animemanganaruto/images/3/3c/Amegakure.jpg/revision/latest?cb=20111003145531&path-prefix=es'
          ,
        ),
        const CustomCardImage(
            imageUrl:
                'https://vignette.wikia.nocookie.net/animemanganaruto/images/3/3c/Amegakure.jpg/revision/latest?cb=20111003145531&path-prefix=es')
      ],
    );
  }
}
