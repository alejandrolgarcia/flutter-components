import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
    
    const AvatarScreen({Key? key}) : super(key: key);
    
    @override
    Widget build(BuildContext context) {
        return Scaffold(

            appBar: AppBar(
                title: const Text("Bruce Wayne"),
                actions: [
                    Container(
                        margin: const EdgeInsets.only( right: 10),
                        child: CircleAvatar(
                            child: const Text("BW"),
                            backgroundColor: Colors.indigo[900],
                        ),
                    )
                ],
            ),

            body: const Center(
                child: CircleAvatar(
                    maxRadius: 125,
                    backgroundImage: NetworkImage("https://i.redd.it/xyigynryozb71.jpg"),
                ),
            ),
        );
    }
}
  