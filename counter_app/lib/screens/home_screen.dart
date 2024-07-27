import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  /*El key sirve para identificar el widget dentro del contexto*/
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  /**El estado se maneja en los atributos del HomeScreen */
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    /**El buildContext es la representacion del arbol de widgets, posee la 
     * informacion del app */

    /*El uso de variables impide que componentes padres usen el constructor constante*/
    // TextStyle fontSize30 = const TextStyle(fontSize: 20);
    /*para usar constantes obtenidas de una variable */
    const TextStyle fontSize30const = const TextStyle(fontSize: 20);

    /**Widget template para apps moviles */
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: const Text('Appbar'),
        backgroundColor: Colors.deepPurpleAccent,
        /*Controla el eje z y permite crear sombras*/
        shadowColor: Colors.black,
        elevation: 10.0,
      ),
      body: Center(
        child: Column(
          /**Lo alinea al eje principal, lo alinea arriba abajo si es una columna */
          mainAxisAlignment: MainAxisAlignment.center,
          /**Alinea el contenido interno de la columna */
          crossAxisAlignment: CrossAxisAlignment.center,
          /**Restinge a una lista de widgets */
          children: <Widget>[
            const Text('Click counter', style: fontSize30const),
            Text('$contador', style: fontSize30const),
          ],
        ),
      ),
      //Posicionar el boton flotante
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              setState(() {
                contador++;
              });
            },
          ),
          // const SizedBox(width: 20),
          FloatingActionButton(
            child: const Icon(Icons.restart_alt),
            onPressed: () {
              setState(() {
                contador = 0;
              });
            },
          ),
          //Podemos añadir separaciones
          // const SizedBox(width: 20),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () {
              setState(() {
                contador--;
              });
            },
          ),
        ],
      ),
    );
  }
}
