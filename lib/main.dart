import 'package:flutter/material.dart';

void main() => runApp(MiContainer());

class MiContainer extends StatelessWidget {
  const MiContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Quitar el banner de debug
      home: Scaffold(
        appBar: AppBar(
          title: Text("Jireh Container"),
          titleTextStyle: TextStyle(color: Color(0xff000000), fontSize: 20),
          backgroundColor: Color(0xff7df272), // Mismo color que los rectángulos
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20), // Margen derecho
              child: Center(
                child: Text(
                  "0344",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Primer contenedor personalizado
              Contenedor1(),

              SizedBox(height: 20), // Espacio entre los contenedores

              // Segundo contenedor personalizado
              Contenedor2(),

              SizedBox(height: 20), // Espacio entre los contenedores

              // Círculo con el mismo estilo que los rectángulos
              Circulo2(),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget para el primer contenedor
class Contenedor1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      decoration: BoxDecoration(
        color: Color(0xff7df272), // Color de fondo
        borderRadius: BorderRadius.circular(20), // Esquinas redondeadas
        border: Border.all(
          width: 2, // Ancho del borde
          color: Colors.transparent, // Color transparente para el borde sólido
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.green.withOpacity(0.5), // Color de la sombra
            spreadRadius: 3, // Extensión de la sombra
            blurRadius: 7, // Difuminado de la sombra
            offset: Offset(1, 2), // Desplazamiento de la sombra
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
            20), // Recorta el contenido para que no se salga del borde
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.green.withOpacity(0.3), // Color difuminado en el borde
                Colors.transparent, // Transparencia hacia el centro
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Text(
              'Contenedor 1',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Widget para el segundo contenedor
class Contenedor2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      decoration: BoxDecoration(
        color: Color(0xff7df272), // Color de fondo diferente
        borderRadius: BorderRadius.circular(10), // Esquinas menos redondeadas
        border: Border.all(
          width: 2, // Ancho del borde
          color: Colors.transparent, // Color transparente para el borde sólido
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.green.withOpacity(0.5), // Color de la sombra
            spreadRadius: 3, // Extensión de la sombra
            blurRadius: 7, // Difuminado de la sombra
            offset: Offset(2, 2), // Desplazamiento de la sombra
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
            10), // Recorta el contenido para que no se salga del borde
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue.withOpacity(0.3), // Color difuminado en el borde
                Colors.transparent, // Transparencia hacia el centro
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Text(
              'Contenedor 2',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Widget para el círculo con el mismo estilo que los rectángulos
class Circulo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Color(0xff7df272), // Color de fondo
        shape: BoxShape.circle, // Forma circular
        boxShadow: [
          BoxShadow(
            color: Colors.green.withOpacity(0.5), // Color de la sombra
            spreadRadius: 3, // Extensión de la sombra
            blurRadius: 7, // Difuminado de la sombra
            offset: Offset(2, 2), // Desplazamiento de la sombra
          ),
        ],
      ),
      child: Center(
        child: Text(
          'Círculo',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
