import 'package:componentes_prog3/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatefulWidget {
   
  const InputsScreen({Key? key}) : super(key: key);

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {

  final GlobalKey<FormState> _formInputKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: _formInputKey,
          child: const Column(
            children: [
              CustomInput(
                hintLabelText: 'Nombre',
                icon: Icons.person,
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 10,),
              CustomInput(
                hintLabelText: 'Email',
                icon: Icons.email_rounded,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 10,),
              CustomInput(
                hintLabelText: 'Contraseña',
                icon: Icons.password_rounded,
                keyboardType: TextInputType.text,
                obscureText: true,
              ),
            ],
          )
        ),
      )
    );
  }
}

