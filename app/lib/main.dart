import 'package:flutter/material.dart';
import 'package:app/screens/discover/widgets/widecard.dart';
import 'package:app/shared/service.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final Service clima = new Service(
      'Clima',
      'assets/clima.jpeg',
      'Servicio Nacional de Metereología e Hidrología',
      '',
      '',
      'Lorep Ipsum...',
      'Notifications, Real-time data...');

  final Service incendios = new Service(
      'Incendios',
      'assets/incendios.jpeg',
      'Sistema de Alerta Temprana de Incendios Forestales',
      '',
      '',
      'Lorep Ipsum...',
      'Notifications, Real-time data...');

  final Service radiacion = new Service(
      'Radiación Solar',
      'assets/uv.jpeg',
      'Laboratorio de Física de la Atmósfera - UMSA',
      '',
      '',
      'Lorep Ipsum...',
      'Notifications, Real-time data...');

  final Service desborde = new Service(
      'Desborde de ríos',
      'assets/desborde.jpeg',
      'Servicio Nacional de Metereología e Hidrología',
      '',
      '',
      'Lorep Ipsum...',
      'Notifications, Real-time data...');

  final Service nuclear = new Service(
      'Accidentes Nucleares',
      'assets/nuclear.jpeg',
      'Agencia Boliviana de Energía Nuclear',
      '',
      '',
      'Lorep Ipsum...',
      'Notifications, Real-time data...');

  final Service desaparecidos = new Service(
      'Desaparecidos',
      'assets/desaparecidos.jpeg',
      'Fuerza Especial de Lucha Contra el Crimen',
      '',
      '',
      'Lorep Ipsum...',
      'Notifications, Real-time data...');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          // leading: Icon(Icons.menu),
          title: Text(
            'ALERTAS',
            textAlign: TextAlign.center,
          ),
        ),
        body: Column(
          children: <Widget>[
            WideCard(clima),
            WideCard(incendios),
            WideCard(desaparecidos),
            WideCard(nuclear),
          ],
        ),
        drawer: new Drawer(
          child: ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: Text('Rodrigo Iturralde'),
                accountEmail: Text('riturralde@byui.edu'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/avatar.jpeg'),
                ),
              ),
              new ListTile(
                leading: Icon(Icons.search),
                title: Text('Descubrir', style: TextStyle(fontSize: 22.0),),
              ),
              new ListTile(
                leading: Icon(Icons.star),
                title: Text('Mis suscripciones', style: TextStyle(fontSize: 22.0),),
              ),
              new ListTile(
                leading: Icon(Icons.help_outline),
                title: Text('Acerca de', style: TextStyle(fontSize: 22.0),),
              ),
              new ListTile(
                leading: Icon(Icons.receipt),
                title: Text('Terminos y Condiciones', style: TextStyle(fontSize: 22.0),),
              ),
              new ListTile(
                leading: Icon(Icons.settings),
                title: Text('Opciones', style: TextStyle(fontSize: 22.0),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
