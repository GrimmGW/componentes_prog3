import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 50;
  bool _isActive = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Column(
        children: [

          Slider(
            min: 0,
            max: 100,
            value: _sliderValue, 
            onChanged: _isActive == true ? ( value ){
              _sliderValue = value;
              setState(() {
                
              });
            } : null,
          ),

          Row(
            children: [
              Checkbox(
                value: _isActive, 
                onChanged: ( value ){
                  _isActive = value!;
                  setState(() {
                    
                  });
                }
              ),
              Text('Acepto los terminos y condiciones.')
            ],
          ),

          CheckboxListTile(
            value: _isActive, 
            onChanged: ( value ){
              _isActive = value!;
              setState(() {
                
              });
            }
          ),
          Switch(
            value: _isActive, 
            onChanged: ( value ){
              _isActive = value;
              setState(() {
                
              });
            }
          ),
          SwitchListTile(
            value: _isActive, 
            onChanged: ( value ){
              _isActive = value;
              setState(() {
                
              });
            }
          ),
        ],
      )
    );
  }
}