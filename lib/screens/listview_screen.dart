import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {

  final List videojuegos = const ['Dark Souls 3', 'Rainbow 6 Siege', 'Final Fantasy VII', 'Minecraft'];

  const ListViewScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview', style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          //spread 
          ...videojuegos.map(
            (juegos) => ListTile(
              title: Text(juegos),
              leading: const Icon(Icons.wifi),
              subtitle: Text('Soy un subtitulo de $juegos'),
            ),
          )
        ],
      )
    );
  }
}