import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  final options = const ['megaman', 'metal gear', 'varsinso'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('APPBar'),
          backgroundColor: Colors.black38,
        ),
        body: ListView(
          children: [
            ...options
                .map((element) => ListTile(
                      title: Text(element),
                      /**Se muestra un icono al inicio */
                      leading: const Icon(Icons.pest_control_outlined),
                      /**Se muestra icono al final */
                      trailing: const Icon(Icons.arrow_forward_ios_rounded),
                    ))
                .toList(),
          ],
        ));
  }
}
