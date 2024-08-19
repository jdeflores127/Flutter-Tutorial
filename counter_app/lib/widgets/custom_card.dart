import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.accessible_forward_rounded),
            title: Text('titulo de la carta'),
            subtitle: Text('hola soy un texto que tiene la carta de ejemplo'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
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
          )
        ],
      ),
    );
  }
}
