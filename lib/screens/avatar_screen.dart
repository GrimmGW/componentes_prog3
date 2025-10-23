import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            margin: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://m.media-amazon.com/images/I/717VleQPsjL.jpg')
            ),
          )
        ],
        title: const Text('Perfil'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://m.media-amazon.com/images/I/717VleQPsjL.jpg')
            ),
            Text('Hector Luna', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('+58 412 1234567'),
            FlutterLogo()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pop(context);
        },
        child: Icon(Icons.home),
      ),
    );
  }
}