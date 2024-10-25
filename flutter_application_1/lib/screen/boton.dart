import 'package:flutter/material.dart';

class boton extends StatefulWidget {
  const boton({super.key});

  @override
  State<boton> createState() => _botonState();
}

class _botonState extends State<boton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Boton'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              print('presionar boton');
            },
            child: Text('presioname'),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: Colors.blue,      
              padding: EdgeInsets.symmetric(
              horizontal: 30, vertical: 20), 
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15), 
              ),
              elevation: 10,                 
            ),
          ),
        ),
      );
      
  }
}