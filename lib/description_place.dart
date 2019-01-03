import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {

  final String description;
  final String title;
  final int starts;

  DescriptionPlace(this.title, this.description, this.starts);


  @override
  Widget build(BuildContext context) {
    final star_border = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2c611),
      ),
    );

    final star_half = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2c611),
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2c611),
      ),
    );

    final titleStart = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900, fontFamily: "Lato"),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            star,
          ],
        )
      ],
    );

    final descriptionContainer = Column(
      children: <Widget>[
        titleStart,
        Container(
          margin: EdgeInsets.only(top: 10, left: 20, right: 10),
          child: Text(description, style: TextStyle(fontFamily: "Lato"),)
        )
      ],
    );
    return descriptionContainer;
  }
}