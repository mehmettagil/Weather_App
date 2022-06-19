

import 'package:flutter/material.dart';
import 'package:weather/model/weather_model.dart';
import 'package:weather/search_city.dart';
import 'package:weather/services/weather_api_client.dart';
import 'package:weather/widgets/extra_information.dart';
import 'package:weather/widgets/instant_weather.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SearchCity());
  }
}

class HomePage extends StatefulWidget {
  String? namecontroller1;
  HomePage({required this.namecontroller1});


  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {



  WeatherApiClient client = WeatherApiClient();
  WeatherModel? data;
  Future<void> getData() async {
    print('${widget.namecontroller1} +11+++11+1+1+');
    data = await client.getCurrentWeather('${widget.namecontroller1}');
    if(data==null){
      SnackBar(
        behavior: SnackBarBehavior.floating,
        content: Text('Hatalı Girildi'),
        action: SnackBarAction(
          label: 'Action',
          onPressed: () {},
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

        appBar: AppBar(

          title: const Text(
            'Weather',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white70,
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
        //  leading: IconButton(
        //     onPressed: () {},
         //     icon: const Icon(
         //       Icons.menu,
          //      color: Colors.black,
          //    )),
        ),

        body:
        FutureBuilder(
            future: getData(),
            builder: (context, snapshot) {
              print('${snapshot.connectionState.toString()} ++++++++');

              if(snapshot.connectionState == ConnectionState.waiting) {
                Center(child: CircularProgressIndicator());}

              else if(snapshot.connectionState == ConnectionState.done){
               return Column(


                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [


                    const SizedBox(
                      height: 20,
                    ),
                    instantWeather(
                        Icons.wb_sunny_sharp, '${data!.temp!.toInt()}',
                        '${data!.cityName}'),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(

                      'Extra İnformation',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.black87),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    extraInformation(
                        '${data!.wind!.toInt()}',
                        '${data!.humidity}',
                        '${data!.pressure}',
                        '${data!.feels_like!.toInt()}'),


                  ],
                );

              }

              return Center(child: CircularProgressIndicator());

            }

            ),


    );
  }
}
