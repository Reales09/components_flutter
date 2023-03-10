import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const ["Megaman", "Halo", "Fotnite", "Gear of wars"];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('ListView tipo 1')),
        body: ListView(
          children: [
            ...options
                .map((game) => ListTile(
                      title: Text(game),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                    ))
                .toList(),
            Divider(),
          ],
        ));
  }
}
