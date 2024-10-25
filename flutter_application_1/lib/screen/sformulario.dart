import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('SingleChildScrollView Ejemplo'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Este es un texto de ejemplo para demostrar el uso de SingleChildScrollView en Flutter. '
                  'Puedes agregar múltiples widgets de texto e imágenes aquí para crear un contenido desplazable.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkcdsXtXuACUgWyTghu8z8NwVXRo5Hs0gHtA&s', // Imagen de ejemplo
                height: 200,
                width: 400,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Aquí hay más texto para llenar el contenido. '
                  'Puedes seguir agregando más widgets para ver cómo el scroll funciona con múltiples elementos.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkcdsXtXuACUgWyTghu8z8NwVXRo5Hs0gHtA&s', // Otra imagen de ejemplo
                height: 200,
                width: 400,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  '¡Sigue desplazándote! Esto es solo un ejemplo para mostrar cómo puedes usar SingleChildScrollView.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkcdsXtXuACUgWyTghu8z8NwVXRo5Hs0gHtA&s', // Tercera imagen de ejemplo
                height: 200,
                width: 400,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Finalmente, puedes agregar tanto texto como desees. Este scroll funciona bien con contenido extenso.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
