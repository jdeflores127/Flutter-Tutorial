import 'package:counter_app/routes/routes.dart';
import 'package:counter_app/screens/list_view_screen.dart';
import 'package:counter_app/themes/dark/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          //backgroundColor: Colors.blue,
          shadowColor: Colors.black,
          elevation: 3,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(RoutesApp.menuOptions.elementAt(index).name),
                  leading: Icon(
                    RoutesApp.menuOptions.elementAt(index).icon,
                    color: AppTheme.primary,
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_sharp),
                  onTap: () => {
                    Navigator.pushNamed(
                        context, RoutesApp.menuOptions.elementAt(index).route)
                  },
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: RoutesApp.menuOptions.length));
  }

  void pushRoute(BuildContext context) {
    /**Permite hacer un push con opciones avanzadas como sobreescribir 
     * la animación */
    final route = MaterialPageRoute(
      builder: (context) => const ListViewScreen(),
    );
    /**Push sin destruir el stack de paginas visitadas */
    // 0Navigator.push(context, route);
    /**Push destruyendo el stack de paginas visitadas */
    Navigator.pushReplacement(context, route);
  }
}
