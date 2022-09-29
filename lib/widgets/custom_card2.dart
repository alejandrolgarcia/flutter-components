import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class CustomCard2 extends StatelessWidget {

    final String imageUrl;
    final String? description;
        
    const CustomCard2({ 
        Key? key,
        required this.imageUrl,
        this.description,
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Card(
            clipBehavior: Clip.antiAlias, // ajusta los hijos y los recorta si se salen del card
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
            ),
            elevation: 10,
            shadowColor: AppTheme.primary.withOpacity(0.5),

            child: Column(
                children: [

                    FadeInImage(
                        image: NetworkImage(imageUrl),
                        placeholder: const AssetImage('assets/loading.gif'),
                        width: double.infinity,
                        height: 230,
                        fit: BoxFit.cover,
                        fadeInDuration: const Duration(milliseconds: 500),
                    ),

                    if(description != null)

                        Container(
                            alignment: AlignmentDirectional.centerEnd,
                            padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                            child: Text(description ?? 'No title'),
                        )
                ],
            ),
        );
    }
}