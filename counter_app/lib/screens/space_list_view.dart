import 'package:flutter/material.dart';

class SpaceScreenApp extends StatelessWidget {
  const SpaceScreenApp({Key? key}) : super(key: key);

  final options = const ['megaman', 'metal gear', 'varsinso'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('APPBar'),
          backgroundColor: Colors.green,
          shadowColor: Colors.green,
          elevation: 10,
        ),
        //es mas usado y puede hacer carga peresoza
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(options[index]),
            /**Se muestra un icono al inicio */
            leading: const Icon(Icons.pest_control_outlined),
            /**Se muestra icono al final */
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.indigo,
            ),
            /*evento on tap*/
            onTap: () => print('tap'),
          ),
          separatorBuilder: (context, index) => const Divider(
            height: 16,
            color: Colors.amber,
          ),
        ));
  }
}
