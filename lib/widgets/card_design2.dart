import 'package:flutter/material.dart';

class CardDesign2 extends StatelessWidget {

  final String url;
  final String title;
  final String subtitle;

  const CardDesign2({
    super.key, 
    required this.url, 
    required this.title, 
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 5,
      shadowColor: Colors.indigo,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(url),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 500),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            alignment: AlignmentDirectional.centerStart,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
                const SizedBox(height: 5,),
                Text(subtitle)
              ],
            ),
          )
        ],
      ),
    );
  }
}