import 'package:dio/dio.dart';
import 'package:weather_app_hw8/models/model.dart';

Future<Weather?> FetchData() async{
  Dio dio = Dio();
  await Future.delayed(const Duration(seconds: 2));
  final res = await dio.get("https://api.openweathermap.org/data/2.5/weather?q=bishkek,&appid=9d48ca0f0ec99ebd94d30163f03012be");
   if(res.statusCode == 200) {
    final Weather weather = Weather(
     id: res.data["weather"][0]["id"],
     main: res.data["weather"][0]["main"], 
     description: res.data['weather'][0]['description'], 
     icon: res.data['weather'][0]['icon'],
     temp: res.data['main']['temp'],
     name: res.data['name'],
     );
     return weather;

   }


}