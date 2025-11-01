import 'dart:math';
import 'package:flutter/material.dart';

class ContainerScreen extends StatefulWidget {
   
  const ContainerScreen({Key? key}) : super(key: key);

  @override
  State<ContainerScreen> createState() => _ContainerScreenState();
}

class _ContainerScreenState extends State<ContainerScreen> {

  double _height = 100;
  double _width = 100;
  Color? _color = Colors.indigoAccent;

  void changeShape(){
    final random = Random();
    _height = random.nextInt(300).toDouble() + 70;
    _width = random.nextInt(300).toDouble() + 70;
    _color = Color.fromRGBO(
      random.nextInt(255), 
      random.nextInt(255), 
      random.nextInt(255), 
      1,
    );

    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
      ),
      body: Center(
         child: AnimatedContainer(
          curve: Curves.easeInOut,
          duration: const Duration(milliseconds: 700),
          height: _height,
          width: _width,
          // color: Colors.red,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: BorderRadius.circular(20)
          ),
         )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          changeShape();
        },
        child: const Icon(Icons.shuffle_rounded),
      ),
    );
  }
}