import 'package:flutter/material.dart';
import 'package:hw_8_bmi_calculator/components/card_widget.dart';
import 'package:hw_8_bmi_calculator/theme/app_colors.dart';
import 'package:hw_8_bmi_calculator/theme/app_texts.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 55, 52, 52),
      appBar:
      AppBar(backgroundColor: const Color(0x0f0a00f1), 
      title:  AppTexts.bmi,
      elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 21, top: 32, right: 19,bottom: 41 ),
        child: Column(
          children: [ 
            Expanded(
              child: Row(
              children: const[
                CardWidget(color: Colors.red,),
                SizedBox(width: 39,),
                CardWidget(color: Colors.red,),
          ],
             ),
          ),
        Expanded(child: 
          Padding(
            padding: const EdgeInsets.only(top: 18, bottom: 18),
            child: Row(
              children: const[
                CardWidget(color: Colors.yellow,),
              ],
             ),
          ),
        ),
          Expanded(
              child: Row(
              children: const[
                CardWidget(color: Colors.green,),
                SizedBox(width: 39,),
                CardWidget(color: Colors.red,),
          ],
             ),
          ),
          ],
          
        ),
      ),
      bottomNavigationBar: 
       Container(
              height: 83,
              width: double.infinity,
              color: AppColors.pinkColor,
              child: const Center(child: AppTexts.calculator),
            ),
  
    );
  }
}

