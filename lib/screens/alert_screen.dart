import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
    
    const AlertScreen({Key? key}) : super(key: key);

    void displayDialogIOS(BuildContext context) {

        showCupertinoDialog(
            // barrierDismissible: true,
            context: context, 
            builder: (context) {

                return CupertinoAlertDialog(
                    title: const Text('Alerta en Ios'),
                    content: Column(
                        mainAxisSize: MainAxisSize.min, // Ajusta el tamaño de acuerdo a los hijos
                        children: const [
                            Text('Este es el cuerpo de la alerta'),
                            SizedBox(height: 10),
                            FlutterLogo(size: 100)
                        ],
                        
                    ),
                    actions: [
                        TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('Cancelar', style: TextStyle(color: Colors.red)),
                        ),

                        TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('Ok'),
                        )
                    ],

                );

            }
        );

    }


    void displayDialogAndroid(BuildContext context) {

        showDialog(
            // barrierDismissible: true,
            context: context,
            builder: (context) {
                return AlertDialog(
                    title: const Text('Titulo de la alerta'),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
                    content: Column(
                        mainAxisSize: MainAxisSize.min, // Ajusta el tamaño de acuerdo a los hijos
                        children: const [
                            Text('Este es el cuerpo de la alerta'),
                            SizedBox(height: 10),
                            FlutterLogo(size: 100)
                        ],
                    ), 
                    actions: [
                        TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('Cancelar'),
                        ),
                        TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('Ok'),
                        )
                    ],
                );
            }
        );

    }
    
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Center(
                child: ElevatedButton(
                    // onPressed: () => displayDialogIOS(context),
                    onPressed: () => Platform.isAndroid
                        ? displayDialogAndroid(context)
                        : displayDialogIOS(context),

                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                      child: Text('Mostrar alerta', style: TextStyle(fontSize: 16)),
                    )
                ),
            ),

            floatingActionButton: FloatingActionButton(
                child: const Icon(Icons.close_rounded),
                onPressed: () => Navigator.pop(context),
            ),
        );
    }
}