import 'package:flutter/material.dart';

class CardDesign1 extends StatelessWidget {

  final IconData leading;
  final String title;
  final String subtitle;
  final Color tileColor;

  const CardDesign1({
    super.key,
    required this.leading,
    required this.title, 
    required this.subtitle, 
    required this.tileColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(leading),
            title: Text(title),
            subtitle: Text(subtitle),
            tileColor: tileColor,
          )
        ],
      ),
    );
  }
}