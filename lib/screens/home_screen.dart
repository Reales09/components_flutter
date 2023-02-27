import 'package:flutter/material.dart';

import 'package:fl_components/router/app_routes.dart';

import '../theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Components in Flutter'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading:
                      Icon(menuOptions[index].icon, color: AppTheme.eerieBlack),
                  title: Text(menuOptions[index].name),
                  onTap: () {
                    // final route = MaterialPageRoute(
                    //     builder: (context) => const ListView1Screen());
                    Navigator.pushNamed(context, menuOptions[index].route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: menuOptions.length));
  }
}
