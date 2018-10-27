import 'package:flutter/material.dart';
import 'CustomClass.dart';
import 'dart:math';

class FirstPage extends StatelessWidget {
  //List<Widget> recepies = new List<Widget>.generate(20, (i) => new CustomCard(1, "Estoy comentando lo comentado"));

  List<Widget> listRecepies(){
    var rng = new Random();

    List<Widget> recepies = new List<Widget>();
    recepies.add(new CustomCard(rng.nextInt(1000), "Buena receta"));
    recepies.add(new CustomCard(rng.nextInt(1000), "Buena receta"));
    recepies.add(new CustomCard(rng.nextInt(1000), "No muy buena"));
    recepies.add(new CustomCard(rng.nextInt(1000), "No muy buena"));
    recepies.add(new CustomCard(rng.nextInt(1000), "No muy buena"));
    recepies.add(new CustomCard(rng.nextInt(1000), "No muy buena"));
    recepies.add(new CustomCard(rng.nextInt(1000), "No muy buena"));
    recepies.add(new CustomCard(rng.nextInt(1000), "No muy buena"));
    recepies.add(new CustomCard(rng.nextInt(1000), "No muy buena"));
    recepies.add(new CustomCard(rng.nextInt(1000), "No muy buena"));
    recepies.add(new CustomCard(rng.nextInt(1000), "No muy buena"));
    return recepies;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: new AppBar(
        backgroundColor: Colors.orangeAccent.shade400,
        title: new Text("Cook App"),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.attach_file),
            color: Colors.white,
            onPressed: _onPressBtp,
          )
        ],
      ),
      body: new Container(
        padding: EdgeInsets.all(20.0),
        alignment: Alignment.topCenter,
        child: new ListView(
          children: listRecepies(),
        ),
      ),
    );
  }

  void _onPressBtp() => debugPrint("Bto was pressed");
} //End FirstPage

