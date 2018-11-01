import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  final int likes;
  final String typeOfMeald;
  final String cookingTime;
  final String dificulty;
  final String recepieTitle;
  final String imageName;

  const CustomCard(
      {Key key,
      this.likes,
      this.typeOfMeald,
      this.cookingTime,
      this.dificulty,
      this.recepieTitle,
      this.imageName})
      : super(key: key);

  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  final paddingValue = 10.0;
  final fontSizeValue = 17.0;

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Expanded(
                child: new Image.asset(
                  "images/${widget.imageName}",
                  height: 240.0,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
          new Padding(
            padding: new EdgeInsets.all(paddingValue),
            child: new Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Flexible(
                  child: new Text(
                    widget.recepieTitle,
                    overflow: TextOverflow.ellipsis,
                    style: new TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: fontSizeValue + 4,
                        fontFamily: 'OpenSans'),
                  ),
                ),
                new Icon(
                  Icons.favorite_border,
                  size: fontSizeValue + 15,
                )
              ],
            ),
          ),
          new Padding(
            padding: new EdgeInsets.all(paddingValue),
            child: new Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Icon(
                      Icons.timer,
                      size: fontSizeValue,
                    ),
                    new Padding(
                      padding: EdgeInsets.only(left: paddingValue),
                      child: new Text(widget.cookingTime,
                          style: new TextStyle(fontSize: fontSizeValue)),
                    )
                  ],
                ),
                new Row(
                  children: <Widget>[
                    new Icon(
                      Icons.announcement,
                      size: fontSizeValue,
                    ),
                    new Padding(
                      padding: EdgeInsets.only(left: paddingValue),
                      child: new Text(widget.dificulty,
                          style: new TextStyle(fontSize: fontSizeValue)),
                    )
                  ],
                ),
                new Row(
                  children: <Widget>[
                    new Icon(
                      Icons.watch_later,
                      size: fontSizeValue,
                    ),
                    new Padding(
                      padding: EdgeInsets.only(left: paddingValue),
                      child: new Text(widget.typeOfMeald,
                          style: new TextStyle(fontSize: fontSizeValue)),
                    )
                  ],
                )
              ],
            ),
          ),
          new Padding(
              padding: new EdgeInsets.all(paddingValue + 3),
              child: new Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Icon(
                    Icons.thumb_up,
                    size: fontSizeValue,
                  ),
                  new Padding(
                    padding: new EdgeInsets.only(left: paddingValue),
                    child: new Text(
                      widget.likes > 1
                          ? "${widget.likes} Likes"
                          : "${widget.likes} Like",
                      style: new TextStyle(fontSize: fontSizeValue),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

// class CustomCard extends StatelessWidget {
//   int likes;
//   String comments;

//   CustomCard(int likes, String comments) {
//     this.likes = likes;
//     this.comments = comments;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new Card(
//       child: new Column(
//         children: <Widget>[
//           new Padding(
//               padding: new EdgeInsets.all(7.0),
//               child: new Row(
//                 children: <Widget>[
//                   new Padding(
//                     padding: new EdgeInsets.all(7.0),
//                     child: new Icon(Icons.thumb_up),
//                   ),
//                   new Padding(
//                     padding: new EdgeInsets.all(7.0),
//                     child: new Text(
//                       ' $likes Like',
//                       style: new TextStyle(fontSize: 18.0),
//                     ),
//                   ),
//                   new Padding(
//                     padding: new EdgeInsets.all(7.0),
//                     child: new Icon(Icons.comment),
//                   ),
//                   new Padding(
//                     padding: new EdgeInsets.all(7.0),
//                     child: new Text(comments,
//                         style: new TextStyle(fontSize: 18.0)),
//                   )
//                 ],
//               ))
//         ],
//       ),
//     );
//   }
// } //End CustomCard
