import 'package:componentes_prog3/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu principal'),
        // backgroundColor: Colors.blueAccent,
      ),
      body: ListView.separated(
        //Tamaño de nuestra lista
        itemCount: AppRoutes.menuOptions.length,

        //Usar los guiones bajos omite el uso de context y/o int
        separatorBuilder: ( _ , __ ){
          return const Divider();
        }, 
        //Contructor del Widget
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: FaIcon(FontAwesomeIcons.magnifyingGlass),
      ),
    );
  }
}