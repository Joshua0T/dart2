import 'package:flutter/material.dart';

void main() {
  runApp(Tex());
}

class Tex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ejemplo de Widgets'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centra el contenido verticalmente
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search), 
                  hintText: "Buscar Producto", 
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10), 
                  ),
                ),
                style: TextStyle(
                  fontSize: 16, 
                  fontWeight: FontWeight.bold, 
                  color: Colors.black, 
                ),
              ),
            ),
            SizedBox(height: 20), 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround, 
              children: [
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkcdsXtXuACUgWyTghu8z8NwVXRo5Hs0gHtA&s', 
                  height: 100, 
                  width: 100, 
                  fit: BoxFit.cover, 
                ),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkcdsXtXuACUgWyTghu8z8NwVXRo5Hs0gHtA&s', 
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
