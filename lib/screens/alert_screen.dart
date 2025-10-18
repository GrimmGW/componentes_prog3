import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {

  void displayDialog(BuildContext context){
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {
        return AlertDialog(
          // icon: Icon(Icons.warning_rounded),
          title: const Text('Esto es una Alerta'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Enim ea laborum nulla consectetur exercitation proident cillum laborum enim officia quis occaecat. Culpa in cupidatat sint enim.'),
              // SizedBox(height: 35,),
              // FlutterLogo( size: 50,),
            ],
          ),
          actions: [
            //Boton dentro del dialogo
            TextButton(
              onPressed: (){
                Navigator.pop(context);
              }, 
              child: const Text('Aceptar')
            )
          ],

        );
      }
    );
  }
   
  const AlertScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: FilledButton(
          onPressed: (){
            displayDialog(context);
          }, 
          child: Text('Pulsa aqui')
        )
      ),
    );
  }
}