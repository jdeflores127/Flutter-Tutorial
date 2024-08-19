import 'package:flutter/material.dart';

class CustomCardImage extends StatelessWidget {
  final String imageUrl;
  final String? nombreTarjeta;
  const CustomCardImage(
      {super.key, required this.imageUrl, this.nombreTarjeta});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      //Puede cortar el contenido para que no se salga de la tarjeta,
      //si se sale lo corta
      clipBehavior: Clip.hardEdge,
      //Definir los bordes redondeados
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          //Permite añadir un gif de esper mientras se carga la imagen
          FadeInImage(
            fit: BoxFit.cover,
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('jar-loading.gif'),
            //Se expande al 100% del ancho del widget
            width: double.infinity,
            height: 230,
            fadeInDuration: const Duration(milliseconds: 4000),
          ),
          Container(
            alignment: Alignment.bottomRight,
            padding: const EdgeInsets.only(top: 10, bottom: 10, right: 30),
            //resolvemos el error del opcional ?
            child: Text(nombreTarjeta ?? 'aldea desconocida'),
          )
        ],
      ),
    );
  }
}
