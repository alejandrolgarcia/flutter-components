import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class CustomCardTypeOne extends StatelessWidget {
  const CustomCardTypeOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [

          const ListTile(
            leading: Icon(Icons.photo_library, color: AppTheme.primary),
            title: Text('Este es un título'),
            subtitle: Text('Deserunt veniam quis in nostrud culpa velit excepteur laboris ullamco officia in nisi deserunt sunt. Magna quis labore nulla.'),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              // Alinear el widget a una posicion en la pantalla
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