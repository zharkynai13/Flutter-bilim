import 'package:flutter/material.dart';
import 'package:quiz_app_hw7/constants/app_colors.dart';
import 'package:quiz_app_hw7/constants/app_textStyle.dart';
import 'package:quiz_app_hw7/use_logic.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  UseQuiz useQuiz = UseQuiz();
  List<Icon> addIcon = [];

  void check(bool use ) {
    setState(() {
      if(useQuiz.isFinished() == true) {
        showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog( // <-- SEE HERE
        title: const Text('Суроолор бутту'),
        content: SingleChildScrollView(
          child: ListBody(
            children: const <Widget>[
              Text('Are you sure want to cancel booking?'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('No'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: const Text('Yes'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
  useQuiz.indexZero();
 } else {
  if(useQuiz.joopAllu() == use) {
    addIcon.add(const Icon(Icons.check));
  }else {
    addIcon.add(const Icon(Icons.clear));
  }
  useQuiz.nextQuestion();
 }
 });

  }


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
             Text(
              useQuiz.suuroAllu(), 
            style: AppTextStyles.bodyTextStyle,textAlign: TextAlign.center,
            ),
            const SizedBox(height: 80,),

            ElevatedButton(onPressed: () {
              check(true);
        
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
              check(false);
        
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
            const SizedBox(height: 30,),

            // ListView.builder(
            //   itemCount: addIcon.length,
            //   scrollDirection: Axis.horizontal,
            //   itemBuilder: (context, index) {
            //     return addIcon[index];
              
            // },)
          ],
        ),
      ),
    );
  }
}