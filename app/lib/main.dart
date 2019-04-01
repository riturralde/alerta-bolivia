import 'package:flutter/material.dart';
import 'package:app/screens/discover/widgets/widecard.dart';
import 'package:app/shared/service.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final Service weather = new Service(
      'Weather',
      'assets/weather.jpeg',
      'Servicio Nacional de Metereología e Hidrología',
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
          leading: Icon(Icons.menu),
          title: Text(
            'ALERTAS',
            textAlign: TextAlign.center,
          ),
        ),
        body: Column(
          children: <Widget>[
            WideCard(weather)
          ],
        ),
      ),
    );
  }
}
