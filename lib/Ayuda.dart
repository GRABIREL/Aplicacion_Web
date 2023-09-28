import 'package:flutter/material.dart';

class Ayuda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('¿Necesitas Ayuda?'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0), // Espaciado interno del contenedor
        margin: EdgeInsets.all(16.0), // Márgenes externos del contenedor
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.orange, // Color del borde
            width: 2.0, // Ancho del borde
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)), // Bordes redondeados
          color: Colors.white, // Color de fondo del contenedor
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.help_outline,
              size: 80.0,
              color: Colors.orange,
            ),
            SizedBox(height: 20.0),
            Text(
              '¿Necesitas Ayuda?',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            Text(
              '¡Estamos aquí para ayudarte! La aplicación de turismo en Landa de Matamoros te permite explorar los lugares de mayor interés en el municipio.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            Divider(
              color: Colors.orange,
              height: 20.0,
            ),
            SizedBox(height: 20.0),
            Text(
              'Desarrollador:',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Gabriel Salinas Ponce',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Versión de la Aplicación:',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '1.0',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

