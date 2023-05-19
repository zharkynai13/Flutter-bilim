import 'package:flutter/material.dart';
import 'package:weather_app_hw8/constants/api_const.dart';
import 'package:weather_app_hw8/constants/app_color.dart';
import 'package:weather_app_hw8/constants/app_text.dart';
import 'package:weather_app_hw8/constants/fetch.dart';
import 'package:weather_app_hw8/models/model.dart';
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

        body: FutureBuilder(future: FetchData(),
           builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.none) {
            return Text("You internet is not working");
          }else if(snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }else if(snapshot.connectionState == ConnectionState.done){
            if(snapshot.hasError) {
              return Text("${snapshot.error}");
            }else if(snapshot.hasData) {
              final weatherSnap = snapshot.data;
              return Center(
                child: Container(
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
                 children:[
                   Text(
                    "${(weatherSnap!.temp - 273.15).toInt()}",
                    style: AppTexts.numStyle,),
                    Image.asset("assets/clouds.png", width: 140,),
                    
                  //  Image.network(ApiConst.getIcon(weatherSnap.icon, 4))
                 ],
                    ),
                     Column(
                      children: [
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text("Bishkek", style: AppTexts.cityText,),
                            Icon(Icons.location_on,size: 40,color: Colors.red,)
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Text("${weatherSnap.description}",style: AppTexts.descText,)
                        
                      ],
                    )
                        ],),
                      ),
              );
            }else {
              return const Text("data not comming");
            }
          }else {
            return const Text("belgisiz kata");
          }
        },
        ),

   );
    //     body: Container(
    //       decoration:const BoxDecoration(
    //         image: DecorationImage(image: 
    //         AssetImage("assets/bg-img.jpg"),
    //         fit: BoxFit.cover)
    //       ),
    //       child: Column(children: [
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceAround,
    //           children: const[
    //             Icon(Icons.near_me,color: AppColors.iconColor,),
    //             SizedBox(width: 190,
    //             height: 40,),
    //             Icon(Icons.location_city,color: AppColors.iconColor,)
    //           ],
    //         ),
    //          Row(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //            children: const[
    //              Text("8",style: AppTexts.numStyle,),
    //              Image(image: AssetImage("assets/clouds.png"),width: 140,)
    //            ],
    //          ),
    //       ],),
    //     ),
  }
}