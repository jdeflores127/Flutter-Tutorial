/**El archivo de barril debe tener el mismo nombre que la carpeta */
import 'package:counter_app/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  /**Run app espera un widget */
  runApp(const MyApp());
}

/*Stateless es un widget, No mantienen el estados*/
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /**Las constantes optimizan el codigo de flutter */
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: const SpaceScreenApp(),
      initialRoute: RoutesApp.initialRoutes,
      routes: RoutesApp.getAppRoutes(),
    );
  }
}
