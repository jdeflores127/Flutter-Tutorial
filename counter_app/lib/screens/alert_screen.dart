import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  void displayDilog(BuildContext context) {
    print('hola mundo');
    //Mostrar dialogo: debemos crear el dialogo y luego mostrarlo
    showDialog(
      //Cierra el dialogo cuando das click en la sombra
      barrierDismissible: true,
      context: context,
      //COnstruye la caja de la alerta
      builder: (context) => const AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          elevation: 5,
          title: Text('titulo'),
          content: Column(
            //mainAxisAlignment: MainAxisAlignment.end,
            /*Por defecto la alert ocupa todo el ancho de la pantalla, 
          para indicarle que la ventana sea pequeña podemos usar min*/
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('contenido de la alerta'),
              SizedBox(height: 10),
              FlutterLogo(size: 100)
            ],
          ),
          //Compoentes que puedo definir al final de la alerta
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancelar'))
          ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () => displayDilog(context),
            child: const Text('Presioname')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Regresamos a la ventana anterior del stack del historial
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
