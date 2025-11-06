import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {

  final String hintLabelText;
  final IconData icon;
  final bool? obscureText;
  final TextInputType keyboardType;

  const CustomInput({
    super.key, 
    required this.hintLabelText, 
    required this.icon, 
    this.obscureText, 
    required this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: obscureText != null ? true : false ,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: (value) {
        print(value);
      },
      validator: (value) {
        if (value == null) return 'Este campo es requerido';
        return value.length < 3 ? 'Minino 3 caracteres' : null;
      },
      decoration: InputDecoration(
        hintText: hintLabelText,
        labelText: hintLabelText,
        // helperText: 'Escribe tu nombre real',
        suffixIcon: Icon(icon),
      ),
    );
  }
}