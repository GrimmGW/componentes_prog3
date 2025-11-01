import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class DependenciesScreen extends StatelessWidget {
   
  const DependenciesScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: Text('Texto de ejemplo'),
      ),
      bottomNavigationBar: GNav(
        backgroundColor: Colors.indigoAccent[100]!,
        color: Colors.white,
        activeColor: Colors.white,
        rippleColor: Colors.indigo[800]!,
        tabBackgroundColor: Colors.indigo,
        gap: 10,
        tabs: [
          GButton(
            icon: FontAwesomeIcons.thumbsUp,
            text: 'Principal',
          ),
          GButton(
            icon: FontAwesomeIcons.gamepad,
            text: 'Juegos',
          ),
          GButton(
            icon: FontAwesomeIcons.video,
            text: 'Multimedia',
          ),
        ]
      ),
    );
  }
}