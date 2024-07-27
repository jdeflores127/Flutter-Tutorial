import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

/*Componente padre de la aplicacion*/
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /**ChangeNotifierProvider permite a cualqueir widget de toda la app obtener el estado */
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

/*Datos necesarios para que la App funcione*/
/*Change notifier notifica de los cambios en el estado o variable current y 
notifica a los demas Widgets de este Widget*/
class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
  var favorites = <WordPair>[];

  void getNext() {
    current = WordPair.random();
    /*Notifica a todos los componentes que miran este widget*/
    notifyListeners();
  }

  void toogleFavorite() {
    if (favorites.contains(current)) {
      favorites.remove(current);
    } else {
      favorites.add(current);
    }

    notifyListeners();
  }
}

class MyHomePage extends StatelessWidget {
  /*Builde se ejecuta automaticamente cada vez que el widget cambia de estado*/
  @override
  Widget build(BuildContext context) {
    /*Se realiza el seguimiento del estado actual con el Watch*/
    var appState = context.watch<MyAppState>();
    var pair = appState.current;
    /**Cada build regresa un widget que se mostrará, el Scaffold es el 
     * widgetPadre */
    return Scaffold(
      body: Center(
        /*Column acomoda el widget en una columna de arriba/abajo*/
        child: Column(
          //Centrar la tarjeta
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('A random idea pos:'),
            BigCard(pair: pair),
            Row(
              /**No ocupa todo el espacio */
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    appState.toogleFavorite();
                  },
                  label: Text('like'),
                  icon: Icon(Icons.favorite_rounded),
                ),
                ElevatedButton(
                  onPressed: () {
                    /*Mostrar en la consola de VSCODE */
                    print('boton presionado');
                    appState.getNext();
                  },
                  /**texto del boton */
                  child: Text('Next'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BigCard extends StatelessWidget {
  const BigCard({
    super.key,
    required this.pair,
  });

  final WordPair pair;

  @override
  Widget build(BuildContext context) {
    /*Solicita el tema actual del App*/
    final theme = Theme.of(context);

    final style = theme.textTheme.displayMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
    );

    return Card(
      /**obtiene el color del tema del app */
      color: theme.colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(50),
        child: Text(pair.asLowerCase, style: style),
      ),
    );
  }
}
