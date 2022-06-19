import 'package:flutter/material.dart';

Widget instantWeather(IconData icon, String temp, String location) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.amberAccent,
          size: 70,
        ),
        Text(
          '$temp',
          style: TextStyle(fontSize: 45, color: Colors.black,fontWeight: FontWeight.bold),
        ),
        Text('$location',style: TextStyle(fontSize: 27,color: Colors.grey[500],fontWeight: FontWeight.bold),)
      ],
    ),
  );
}
