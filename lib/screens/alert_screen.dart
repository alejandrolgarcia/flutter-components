import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Text('Title'),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10)),
                content: Column(
                // Los hijos determinan el tamaño del widget
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text('Este es el contenido de la alerta'),
                  SizedBox(height: 10),
                  FlutterLogo(size: 50)
                ]),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancelar'))
            ],
          );
        });
  }

  void displayDialogIos(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text('Title'),
            content: Column(
            // Los hijos determinan el tamaño del widget
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 10),
              FlutterLogo(size: 50)
            ]),

            actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancelar', style: TextStyle(color: Colors.red)) 
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Ok'))
          ],
        );
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          // style: ElevatedButton.styleFrom(
          // primary: Colors.indigo,
          // shape: const StadiumBorder(),
          // elevation: 0
          // ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text(
              'Mostrar alerta',
              style: TextStyle(fontSize: 15),
            ),
          ),
          onPressed: () => !Platform.isAndroid
            ? displayDialogIos(context)
            : displayDialogAndroid(context)
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
