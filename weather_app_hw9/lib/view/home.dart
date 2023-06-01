import 'dart:html';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app_hw8/constants/api_const.dart';
import 'package:weather_app_hw8/constants/app_color.dart';
import 'package:weather_app_hw8/constants/app_text.dart';
import 'package:dio/dio.dart';
import 'package:weather_app_hw8/models/model.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
const List cities = <String>[
  'Bishkek',
  'Osh',
  'Jalal-Abad',
  'Karakol',
  'Batken',
  'Talas',
  'Naryn'
];

class _MyHomePageState extends State<MyHomePage> {
  Weather? weather;
  
  
  Future<void> getLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if(permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    } if(permission == LocationPermission.always && permission == LocationPermission.whileInUse) {
      Position position = await Geolocator.getCurrentPosition();
       Dio dio = Dio();
       final res = await dio.get(ApiConst.address(lat: position.latitude, lon: position.longitude));
       if(res.statusCode == 200) {
        weather = Weather(
       id: res.data["current"]["weather"][0]["id"],
       main: res.data["current"]["weather"][0]["main"], 
       description: res.data["current"]['weather'][0]['description'], 
       icon: res.data["current"]['weather'][0]['icon'],
       temp: res.data["current"]['temp'],
       name: res.data["timezone"],
     );
   }
     setState(() { });

    }else {
         Position position = await Geolocator.getCurrentPosition();
       Dio dio = Dio();
       final res = await dio.get(ApiConst.address(lat: position.latitude, lon: position.longitude));
       if(res.statusCode == 200) {
        weather = Weather(
       id: res.data["current"]["weather"][0]["id"],
       main: res.data["current"]["weather"][0]["main"], 
       description: res.data["current"]['weather'][0]['description'], 
       icon: res.data["current"]['weather'][0]['icon'],
       temp: res.data["current"]['temp'],
       name: res.data["timezone"],
     );
   }
     setState(() { });
    }

  }
  Future<void> fetchData(String? url) async{
  Dio dio = Dio();
  final res = await dio.get(ApiConst.getWeatherData(url ?? 'bishkek'));
   if(res.statusCode == 200) {
     weather = Weather(
     id: res.data["weather"][0]["id"],
     main: res.data["weather"][0]["main"], 
     description: res.data['weather'][0]['description'], 
     icon: res.data['weather'][0]['icon'],
     temp: res.data['main']['temp'],
     name: res.data['name'],
     );
   }
   setState(() {
     
   });
}
 @override
  void initState() {
    super.initState();
    fetchData("");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.appBg,
        title: const Text('Home Work 9', style: AppTexts.appBarText,),
        elevation: 0,),

        body: Container(
                decoration:const BoxDecoration(
                  image: DecorationImage(image: 
                      AssetImage("assets/bg-img.jpg"),
                        fit: BoxFit.cover)
                  ),
                child: Column(children: [
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(onPressed: ()async{
                    getLocation();
                  }, icon: const Icon(Icons.near_me),color: AppColors.iconColor,iconSize: 30,),
                  // IconButton(onPressed(){},Icons.near_me,color: AppColors.iconColor,),
                  const SizedBox(width: 190,height: 40,),
                   IconButton(onPressed: ()async{showBottom();}, icon: const Icon(Icons.location_city),color: AppColors.iconColor,iconSize: 30,),
                ],
              ),
              if (weather != null && weather!.temp != null)
           Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children:[
                   Text(
                    "${(weather!.temp - 273.15).toInt()}",
                    style: AppTexts.numStyle,),
                    Image.asset("assets/clouds.png", width: 140,),
                    
                 ],
                    ),
                     Column(
                      children: [
                         
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                            if (weather != null && weather!.name != null)
                          Text("${weather!.name}", style: AppTexts.cityText,),
                          Icon(Icons.location_on,size: 40,color: Colors.red,)
                          ],
                        ),
                        const SizedBox(height: 20,),
                        if (weather != null && weather!.description != null)
                        Text("${weather!.description}",style: AppTexts.descText,)
                        
                      ],
                    )
           ],),
       ),
   );
  }
   void showBottom() async{
   showModalBottomSheet<void>(
    context: context, 
    builder: (BuildContext context) {
      return Container(
        height: 300,
        color: Colors.amber,
        child: ListView.builder(
          itemCount: cities.length,
          itemBuilder: (context, index)  {
            final city = cities[index];
            return  Card(
              child: ListTile(
                 onTap: () {
                        setState(() {
                          weather = null;
                        });
                        fetchData(city);
                        Navigator.pop(context);
                      },
                title: Text("$city"),
                ),
            );
          }
        )
        
      );
    }
    );
   }
}