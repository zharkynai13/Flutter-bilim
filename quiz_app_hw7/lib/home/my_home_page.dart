import 'package:flutter/material.dart';
import 'package:quiz_app_hw7/constants/app_colors.dart';
import 'package:quiz_app_hw7/constants/app_textStyle.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: AppColors.bodyColor,
      appBar: AppBar(
        backgroundColor: AppColors.appBarColor,
        title:  const Text("Quiz app", 
        style: AppTextStyles.appBarTextStyle,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Text("Кыргызстанда  7 область барбы?", 
            style: AppTextStyles.bodyTextStyle,textAlign: TextAlign.center,
            ),
            const SizedBox(height: 80,),

            ElevatedButton(onPressed: () {
        
            },

            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: 
            BorderRadius.circular(15))),
            ),
            child: const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 118, vertical: 20),
              child: Text("Туура ",
               style: AppTextStyles.buttonTextStyle,),
            )),

              const SizedBox(height: 30,),
            ElevatedButton(onPressed: () {
        
            },

            style: ButtonStyle(
              backgroundColor:
               MaterialStateProperty.all<Color>(AppColors.buttonColorFalse),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: 
            BorderRadius.circular(15),
            )),
            ),

            child: const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 80, vertical: 20),
              child: Text("Туура эмес ", 
              style: AppTextStyles.falseButtonTextStyle,),
            ),
            ),
            // ListView.builder(
            //   scrollDirection: Axis.horizontal,
            //   itemBuilder: (context, index) {
            //     return;
              
            // },)
          ],
        ),
      ),
    );
  }
}