import 'package:componentes_prog3/routes/app_routes.dart';
import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
   
  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu principal'),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text( AppRoutes.menuOptions[index].name ),
            leading: Icon( AppRoutes.menuOptions[index].icon ),
            subtitle: const Text('Toca para acceder a la pantalla'),
            onTap: (){
              Navigator.pushNamed(context, AppRoutes.menuOptions[index].route );
            },
          );
        }, 
        //Usar los guiones bajos omite el uso de context y/o int
        separatorBuilder: ( _ , __ ){
          return const Divider();
        }, 
        itemCount: AppRoutes.menuOptions.length
      )
    );
  }
}