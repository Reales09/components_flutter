import 'dart:io';

import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Este es el contenido de la alerta'),
                SizedBox(height: 10),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Aceptar')),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(color: Colors.red),
                  )),
            ],
          );
        });
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Text('Titulo'),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Este es el contenido de la alerta'),
                SizedBox(height: 10),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Aceptar')),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(color: Colors.red),
                  )),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                // style: ElevatedButton.styleFrom(
                //     primary: Colors.black,
                //     shape: const StadiumBorder(),
                //     elevation: 0),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Mostrar alerta SO',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                //
                onPressed: () => Platform.isAndroid
                    ? displayDialogAndroid(context)
                    : displayDialogIOS(context)),
            ElevatedButton(
                // style: ElevatedButton.styleFrom(
                //     primary: Colors.black,
                //     shape: const StadiumBorder(),
                //     elevation: 0),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Mostrar alerta iOS',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                //
                onPressed: () => displayDialogIOS(context)),
            ElevatedButton(
                // style: ElevatedButton.styleFrom(
                //     primary: Colors.black,
                //     shape: const StadiumBorder(),
                //     elevation: 0),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Mostrar alerta Android',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                //
                onPressed: () => displayDialogAndroid(context)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context)),
    );
  }
}
