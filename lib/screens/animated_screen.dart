import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

// StatefulWidger mantiene el estado y permite cambiar algunas propiedades

class _AnimatedScreenState extends State<AnimatedScreen> {

  double _height = 50;
  double _width = 50;
  Color _color = Colors.red;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  onChangeShape() {

      final random = Random();
      _width = random.nextInt(300).toDouble() + 70;
      _height = random.nextInt(300).toDouble() + 70;
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble() + 10);

      _color = Color.fromRGBO(
        random.nextInt(255),
        random.nextInt(255),
        random.nextInt(255),
        1
      );

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        // Use AnimatedContainer para animar un contenedor
        child: AnimatedContainer(
          // Use duration para animacion del estado anterior al actual
          duration: const Duration(milliseconds: 400),
          // Use Curves class para animacion basada en curvas
          curve: Curves.easeInCubic,
          height: _height,
          width: _width,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
        )
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_circle_outline, size: 35),
        onPressed: onChangeShape,
      )  
    );
  }
}


