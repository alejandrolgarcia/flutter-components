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
        // Padding podemos usarlo para agregar separacion en el widget
        padding: const EdgeInsets.symmetric( horizontal: 15, vertical: 10),

        children: const [
          CustomCardTypeOne(),
          SizedBox( height: 20),
          CustomCardTypeTwo(imageUrl: 'https://www.ninoversace.com/wp-content/uploads/landscape-mountains-sky-4843193.jpg'),
          SizedBox( height: 20),
          CustomCardTypeTwo(imageUrl: 'https://www.tom-archer.com/wp-content/uploads/2018/06/milford-sound-night-fine-art-photography-new-zealand.jpg'),
          SizedBox( height: 20),
          CustomCardTypeTwo(imageUrl: 'http://cdn.eso.org/images/screen/millour-01-cc.jpg'),
          SizedBox( height: 20),
          CustomCardTypeTwo(name: 'Plantaciones de arroz', imageUrl: 'https://backlightblog.com/images/2021/04/landscape-photography-header-2000x1310.jpg'),
          SizedBox(height: 50,)
        ],

      )
    );
  }
}