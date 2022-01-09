import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class CustomCardTypeTwo extends StatelessWidget {

  final String imageUrl;
  final String? name;

  const CustomCardTypeTwo({
    Key? key,
    required this.imageUrl,
    this.name
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 30,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(children: [

        FadeInImage(
          image: NetworkImage(imageUrl),
          placeholder: const AssetImage('assets/loading.gif'),
          width: double.infinity, // para que ocupe todo el tamaño del card
          height: 230,
          fit: BoxFit.cover, // para ajustar la imagen a todo el Card
          fadeInDuration: const Duration(milliseconds: 500),
        ),

        if( name != null ) 
          Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text( name ?? 'No title'))
      ]),
    );
  }
}
