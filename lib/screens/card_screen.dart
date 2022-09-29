import 'package:flutter/material.dart';

import 'package:flutter_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
    
    const CardScreen({Key? key}) : super(key: key);
    
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            
            appBar: AppBar(
                title: const Text('Card Widget'),
            ),

            body: ListView(

                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),

                children: const [

                    CustomCard1(),
                    SizedBox(height: 10),
                    CustomCard2(
                        imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg',
                        description: 'Imagen de valles y montañas'
                    ),
                    SizedBox(height: 10),
                    CustomCard2(
                        imageUrl: 'https://thelandscapephotoguy.com/wp-content/uploads/2019/01/landscape%20new%20zealand%20S-shape.jpg',
                    ),
                    SizedBox(height: 10),
                    CustomCard2(
                        imageUrl: 'https://expertphotography.b-cdn.net/wp-content/uploads/2022/05/Landscape-Photography-Sophie-Turner.jpg', 
                        description: 'Lago y volcanes'
                    ),
                    SizedBox(height: 50),

                ],
            ),
        );
    }
}