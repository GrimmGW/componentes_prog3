import 'package:componentes_prog3/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarjetas'),
      ),
      body: ListView(
        padding: const  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          const CardDesign1(
            leading: Icons.home_rounded, 
            title: 'Tarjeta nueva', 
            subtitle: 'Soy una tarjeta nueva.', 
            tileColor: Colors.greenAccent
          ),
          const CardDesign1(
            leading: Icons.build, 
            title: 'Tarjeta de construccion', 
            subtitle: 'Soy una tarjeta nueva para contruir.', 
            tileColor: Colors.purpleAccent
          ),
          
          const CardDesign2(
            url: 'https://media.revistagq.com/photos/61968f9cf654c19d66ebdd77/16:9/w_1280,c_limit/Halo-Infinite.jpeg', 
            title: 'Una vista hermosa', 
            subtitle: 'Aliqua est fugiat reprehenderit id fugiat occaecat Lorem. Culpa officia ipsum labore exercitation deserunt qui anim. Tempor tempor incididunt aute officia anim. Aute incididunt reprehenderit mollit cupidatat laborum consectetur fugiat amet dolor ad culpa incididunt dolor sunt.',
          ),
          const SizedBox(height: 20),
          const CardDesign2(
            url: 'https://wallpapers.com/images/hd/baymax-hiro-and-tadashi-zxks3s6er4k2cuff.jpg', 
            title: 'Baymax de Big Hero 6', 
            subtitle: 'Veniam ipsum fugiat incididunt excepteur eiusmod.',
          ),

        ],
      )
    );
  }
}

