import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {

    final options = const['Venus', 'Mercurio', 'Tierra', 'Marte', 'Júpiter', 'Saturno', 'Urano', 'Neptuno'];
    
    const Listview2Screen({Key? key}) : super(key: key);
    
    @override
    Widget build(BuildContext context) {
        return Scaffold(

            appBar: AppBar(
                title: const Text('Listview tipo 2'),
            ),

            body: ListView.separated(
                itemCount: options.length,
                itemBuilder:(context, index) => _planetas(options[index]), 
                separatorBuilder:(_, __) => const Divider(), 
            ),

        );
    }
}

_planetas(String planeta) {
    return ListTile(
        // leading: const Icon( Icons.list_outlined ),
        title: Text(planeta),
        trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.indigo),
        onTap: (){},
    );
}

