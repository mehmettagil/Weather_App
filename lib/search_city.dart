
import 'package:flutter/material.dart';
import 'package:weather/main.dart';
class SearchCity extends StatefulWidget {
  const SearchCity({Key? key}) : super(key: key);

  @override
  State<SearchCity> createState() => _SearchCityState();
}

class _SearchCityState extends State<SearchCity> {
  TextEditingController nameController = TextEditingController();
  final myGlobalController = GlobalKey<FormState>();
  String name= '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search City',),centerTitle: true,),
      body:  Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(children: [
          SizedBox(height: 10,),

          Container(
              child: TextField(
                key: myGlobalController,
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'City Name',

                ),
              )
          ),
          FlatButton(child: Text('Okey'),onPressed: (){
            name= nameController.text;
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage(namecontroller1: name)));
          })
        ],
        ),
      )
    );
  }
}
