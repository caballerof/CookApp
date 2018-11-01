import 'package:flutter/material.dart';
import 'CustomClass.dart';
import 'dart:math';

class FirstPage extends StatefulWidget {
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List<Widget> recepies = new List<Widget>();
  var rng = new Random();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: new AppBar(
        backgroundColor: Colors.orangeAccent.shade400,
        title: new Text(
          "Recipies App",
          style: new TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
        ),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.attach_file),
            color: Colors.white,
            onPressed: null,
          )
        ],
      ),
      body: new Container(
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.only(bottom: 15.0),
        alignment: Alignment.topCenter,
        child: new ListView(
          children: [
            new CustomCard(
              typeOfMeald: "Breackfasts",
              likes: rng.nextInt(1000),
              cookingTime: "15 min",
              dificulty: "Medium",
              imageName: "1.jpg",
              recepieTitle: "Tacos al pastor",
            ),
            new CustomCard(
              typeOfMeald: "lunch",
              likes: rng.nextInt(1000),
              cookingTime: "30 min",
              dificulty: "Medium",
              imageName: "2.jpg",
              recepieTitle: "Pork chops",
            ),
            new CustomCard(
              typeOfMeald: "Dinner",
              likes: rng.nextInt(1000),
              cookingTime: "20 min",
              dificulty: "Easy",
              imageName: "3.jpg",
              recepieTitle: "Chicken with broccoli",
            ),
            new CustomCard(
              typeOfMeald: "Dessert",
              likes: rng.nextInt(1000),
              cookingTime: "40 min",
              dificulty: "Medium",
              imageName: "d1.jpg",
              recepieTitle: "Berry Dessert Lasagna cake Recipe",
            ),
          ],
        ),
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
              icon: new Icon(Icons.list), title: new Text("Recepies")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.favorite), title: new Text("Favorite")),
        ],
        onTap: (int i) => debugPrint("Hey you touched $i"),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () => debugPrint("Action Bottom pressed"),
        child: new Icon(Icons.add),
        backgroundColor: Colors.orangeAccent,
      ),
    );
  }
}

// class FirstPage extends StatelessWidget {
//   //List<Widget> recepies = new List<Widget>.generate(20, (i) => new CustomCard(1, "Estoy comentando lo comentado"));

//   List<Widget> listRecepies() {
//     var rng = new Random();

//     List<Widget> recepies = new List<Widget>();
//     recepies.add(new CustomCard(rng.nextInt(1000), "Buena receta"));
//     recepies.add(new CustomCard(rng.nextInt(1000), "Buena receta"));
//     recepies.add(new CustomCard(rng.nextInt(1000), "No muy buena"));
//     recepies.add(new CustomCard(rng.nextInt(1000), "No muy buena"));
//     recepies.add(new CustomCard(rng.nextInt(1000), "No muy buena"));
//     recepies.add(new CustomCard(rng.nextInt(1000), "No muy buena"));
//     recepies.add(new CustomCard(rng.nextInt(1000), "No muy buena"));
//     recepies.add(new CustomCard(rng.nextInt(1000), "No muy buena"));
//     recepies.add(new CustomCard(rng.nextInt(1000), "No muy buena"));
//     recepies.add(new CustomCard(rng.nextInt(1000), "No muy buena"));
//     recepies.add(new CustomCard(rng.nextInt(1000), "No muy buena"));
//     return recepies;
//   }

//   @override
//   Widget build(BuildContext context) {

//   }

//   void _onPressBtp() => debugPrint("Bto was pressed");
// } //End FirstPage
