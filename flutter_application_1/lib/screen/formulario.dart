import 'package:flutter/material.dart';

void main() {
  runApp(Formulario());
}

class Formulario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Formulario con Validación'),
        ),
        body: FormExample(),
      ),
    );
  }
}

class FormExample extends StatefulWidget {
  @override
  _FormExampleState createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  final _formKey = GlobalKey<FormState>(); // GlobalKey para el formulario

  String? _nombre; // Variable para almacenar el valor del campo de texto

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey, // Asigna el GlobalKey al Form
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Nombre',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor ingresa tu nombre'; // Mensaje de error si está vacío
                }
                return null; // Devuelve null si la validación es exitosa
              },
              onSaved: (value) {
                _nombre = value; // Guarda el valor del campo de texto
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) { // Valida el formulario
                  _formKey.currentState!.save(); // Guarda el estado del formulario
                  // Aquí puedes usar el valor guardado
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Nombre ingresado: $_nombre')),
                  );
                }
              },
              child: Text('Enviar'),
            ),
          ],
        ),
      ),
    );
  }
}
