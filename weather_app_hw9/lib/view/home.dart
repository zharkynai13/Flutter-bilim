import 'package:flutter/material.dart';
import 'package:weather_app_hw8/constants/app_color.dart';
import 'package:weather_app_hw8/constants/app_text.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

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
              children: const[
                Icon(Icons.near_me,color: AppColors.iconColor,),
                SizedBox(width: 190,
                height: 40,),
                Icon(Icons.location_city,color: AppColors.iconColor,)
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
               children: const[
                 Text("8",style: AppTexts.numStyle,),
                 Image(image: AssetImage("assets/clouds.png"),width: 140,)
               ],
             ),
          ],),
        ),
    );
  }
}