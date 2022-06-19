import 'package:flutter/material.dart';
Widget extraInformation(String wind,String humidity,String pressure,String feels_like){
  TextStyle textstyle =const TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 18

  );
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(18),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Wind',style: textstyle,),
                const SizedBox(height: 18,),
                Text('Pressure',style: textstyle,),

              ],

            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('$wind',style: textstyle,),
                const SizedBox(height: 18,),
                Text('$pressure',style: textstyle,),

              ],

            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Humidity',style: textstyle,),
                const SizedBox(height: 18,),
                Text('Feels Like',style: textstyle,),

              ],

            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('$humidity',style: textstyle,),
                SizedBox(height: 18,),
                Text('$feels_like',style: textstyle,),

              ],

            ),




          ],
        )
      ],
    ),
  );
}