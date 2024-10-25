import 'package:flutter/material.dart';

void main(){
  runApp(Columna());
}

class Columna  extends StatelessWidget {
 

  @override
 Widget build(BuildContext context){
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('columnas'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>  [
            Text('elemento 1'),
            SizedBox(height: 20),
            Text('elemento 2'),
            SizedBox(height: 20),
            Text('elemento 3'),
          ],
        ),
      ),
    )
    );
  }
}

