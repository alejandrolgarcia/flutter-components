import 'package:flutter/material.dart';

import 'package:flutter_components/theme/app_theme.dart';

class CustomCard1 extends StatelessWidget {
    const CustomCard1({
        Key? key,
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Card(
            child: Column(
                children: [

                    const ListTile(
                        leading: Icon(Icons.card_membership_outlined, color: AppTheme.primary),
                        title: Text('Título del Card'),
                        subtitle: Text('Laborum labore et fugiat et aute ex ad irure. Esse duis exercitation eiusmod sint adipisicing officia ea. Tempor ex eu ex esse fugiat reprehenderit voluptate fugiat minim. Qui voluptate ipsum ea dolore ex. '),
                    ),

                    Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                                
                                TextButton(
                                    onPressed: () {},
                                    child: const Text('Cancel')
                                ),

                                TextButton(
                                    onPressed: () {},
                                    child: const Text('Ok')
                                )
                            ],
                        ),
                    )

                ],
            ),
        );
    }
}