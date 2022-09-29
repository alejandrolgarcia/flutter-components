import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
    
    const AvatarScreen({Key? key}) : super(key: key);
    
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('Avatars'),
                actions:  [
                    Container(
                        margin: const EdgeInsets.only(right: 10),                            
                        child: CircleAvatar(
                            child: const Text('GG'),
                            backgroundColor: Colors.indigo[900]
                        ),
                    )
                ],
            ),
            body: const Center(
                child: CircleAvatar(
                    maxRadius: 110,
                    backgroundImage: NetworkImage('https://www.nacionflix.com/__export/1612791762391/sites/debate/img/2021/02/08/el-dxa-que-gal-gadot-ayudx-a-una-pequexa-wonder-woman-triste_crop1612791493868.jpg_12454381.jpg'),
                ),
            ),
        );
    }
}