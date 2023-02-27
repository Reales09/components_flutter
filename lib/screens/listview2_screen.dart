import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const ["Megaman", "Halo", "Fotnite", "Gear of wars"];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView tipo 2'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(options[index]),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.indigo,
                  ),
                  dense: false,
                  onTap: () {
                    final game = options[index];
                    print(game);
                    Scaffold.of(context)
                        .showBottomSheet((context) => Text(game));
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: options.length));
  }
}
