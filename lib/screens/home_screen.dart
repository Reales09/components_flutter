import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes en Flutter'),
          elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: Icon(Icons.abc),
                  title: const Text('Nombre de ruta'),
                  onTap: () => {},
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: 10));
  }
}
