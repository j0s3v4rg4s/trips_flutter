import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  final String pathImage;
  final String name;
  final String details;
  final String comment;

  Review(this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {
    final userComments = Container(
      margin: EdgeInsets.only(left: 20),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 13,
            color: Color(0xFFa3a5a7),
            fontWeight: FontWeight.w900),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(left: 20),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato", fontSize: 13, color: Color(0xFFa3a5a7)),
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(left: 20),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(fontFamily: "Lato", fontSize: 17),
      ),
    );

    final userDetail = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userInfo, userComments],
    );

    final photo = Container(
      margin: EdgeInsets.only(top: 20, left: 20),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(image: AssetImage(pathImage), fit: BoxFit.cover)),
    );

    return Row(
      children: <Widget>[photo, userDetail],
    );
  }
}
