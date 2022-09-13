import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {

    final options = const['Venus', 'Mercurio', 'Tierra', 'Marte', 'Júpiter', 'Saturno', 'Urano', 'Neptuno'];
    
    const Listview1Screen({Key? key}) : super(key: key);
    
    @override
    Widget build(BuildContext context) {
        return Scaffold(

            appBar: AppBar(
                title: const Text('Listview tipo 1'),
            ),

            body: ListView(
                children: [

                    ...options.map( 
                        (planeta) =>  planetas(planeta)
                    ).toList()

                    // ListTile(
                    //     leading: Icon( Icons.list_outlined ),
                    //     title: Text('Listview'),
                    // )

                ],
            ),

        );
    }
}

planetas(String planeta) {
    return ListTile(
        // leading: const Icon( Icons.list_outlined ),
        title: Text(planeta),
        trailing: const Icon(Icons.arrow_forward_ios_outlined),
        onTap: (){},
    );
}

