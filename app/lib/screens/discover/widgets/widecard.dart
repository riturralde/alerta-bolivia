import 'package:flutter/material.dart';
import 'package:app/shared/service.dart';

class WideCard extends StatelessWidget
{

  const WideCard(this.service);
  final Service service;

  @override
  Widget build(BuildContext context) {

    final grid = Row(

      children: <Widget>[
        Container(
          width: 150.0,
          padding: EdgeInsets.only(top: 6.0, left: 6.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(service.title, style: TextStyle(color: Colors.white, fontSize: 24.0),),
              Container(
                padding: EdgeInsets.only(left: 6.0),
                child: Text(service.provider,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontStyle: FontStyle.italic
                  ),
                  overflow: TextOverflow.fade,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Row(
            children: <Widget>[
              Text('Suscribirse', style: TextStyle(color: Colors.white, fontSize: 24.0),),
              RawMaterialButton(
                onPressed: null,
                child: new Icon(Icons.add, color: Colors.white, size: 20.0,),
                shape: new CircleBorder(),
                elevation: 2.0,
                fillColor: Colors.green[400],
                padding: const EdgeInsets.all(0.0),
              )
            ],
          ),
        )
      ],
    );

    final card = Container(
      height: 100.0,
      width: 500.0,
      child: grid,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(service.imagePath),
            fit: BoxFit.fill
        )
      ),
    );

    return card;
  }
}
