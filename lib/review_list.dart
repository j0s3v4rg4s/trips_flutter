import 'package:flutter/material.dart';
import 'package:trips_app/review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review('assets/img/dalmata.jpeg', 'dalmata', 'este es un gran dalmata', 'mi comentario numero 1'),
        Review('assets/img/descarga.jpeg', 'labrador', 'perro', 'este es un buen labrador'),
        Review('assets/img/images.jpeg', "Pastor aleman", 'alemnan', "este es un buen perro aleman")
      ],
    );
  }
}
