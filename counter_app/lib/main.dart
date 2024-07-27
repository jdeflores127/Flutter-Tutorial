import 'package:counter_app/screens/space_list_view.dart';
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
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: SpaceScreenApp());
  }
}
