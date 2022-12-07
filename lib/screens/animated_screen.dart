import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
    
    const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

    double _height = 100;
    double _width = 100;
    Color _color = Colors.red;
    BorderRadiusGeometry _borderRadius = BorderRadius.circular(20);

    void onChangeShape() {
        Random rn = Random();
        _height = rn.nextInt(300).toDouble() + 50;
        _width = rn.nextInt(300).toDouble() + 50;
        _color = Color.fromRGBO(
            rn.nextInt(255),
            rn.nextInt(255),
            rn.nextInt(255),
            1
        );
        _borderRadius = BorderRadius.circular(rn.nextInt(100).toDouble() + 10);
        
        setState(() {});
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(

            appBar: AppBar(
                title: const Text('Animated Container'),
            ),

            body: Center(
                child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInCubic,
                    height: _height,
                    width: _width,
                    decoration: BoxDecoration(
                        color: _color,
                        borderRadius: _borderRadius
                    ),
                )
            ),

            floatingActionButton: FloatingActionButton(
                child: const Icon(Icons.play_circle_outline, size: 30),
                onPressed: onChangeShape,
            ),

        );
    }
}