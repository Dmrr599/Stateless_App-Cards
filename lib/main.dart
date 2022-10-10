import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Aplicación Stateless By Diana Marina Roldán Ríos 190583",
          style: TextStyle(fontFamily: "Alkalami", fontSize: 38.0),
        ),
        centerTitle: true,

        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: const AssetImage("assets/fondo.jpg"), fit: BoxFit.fill),
          ),
        ),
        // backgroundColor: Color.fromARGB(255, 114, 38, 3),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Card(
                  child: Container(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: <Widget>[
                    Text("Datos del estudiante",
                        style: TextStyle(fontFamily: "Anton", fontSize: 30.0)),
                    Text("Nombre: Diana Marina Roldán Ríos"),
                    Text("Fecha de nacimiento: 26 de Diciembre de 1989"),
                    Text("Genero: Femenino"),
                    Image.asset(
                      'assets/diana.jpg',
                      height: 110,
                      width: 500,
                    ),
                  ],
                ),
              )),
              Card(
                  child: Container(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: <Widget>[
                    Text("Datos academicos",
                        style: TextStyle(fontFamily: "Anton", fontSize: 30.0)),
                    Text(
                        "Carrera: Ingenieria en Desarrollo y Gestión de Software"),
                    Text("Cuatrimestre: Decimo"),
                    Text("Promedio: 9.2"),
                  ],
                ),
              )),
              Card(
                  child: Container(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: <Widget>[
                    Text("Horario",
                        style: TextStyle(fontFamily: "Anton", fontSize: 30.0)),
                    Text("Materia: Desarrollo Movil Integral"),
                    Text("Docente: M.T.I Marco Antonio Ramírez Hernández"),
                    Text("Día: Viernes"),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
      floatingActionButton:
          SpeedDial(animatedIcon: AnimatedIcons.menu_close, children: [
        SpeedDialChild(
            child: Icon(Icons.person),
            label: 'Datos del estudiante',
            backgroundColor: Colors.greenAccent),
        SpeedDialChild(
            child: Icon(Icons.school),
            label: 'Datos academicos',
            backgroundColor: Colors.greenAccent),
        SpeedDialChild(
            child: Icon(Icons.book),
            label: 'Horarios',
            backgroundColor: Colors.greenAccent),
      ]),
    );
  }
}
