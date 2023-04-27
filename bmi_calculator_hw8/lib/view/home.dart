
import 'package:bmi_calculator_hw8/components/card_widget.dart';
import 'package:flutter/material.dart';

import '../components/icon_widget.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI calculator'.toUpperCase()),
      ),
      body: SafeArea(child: 
      Column(
        children: [
          Expanded(child: Row(
            children: const [
               CardWidget(
                color: Color(0xff1d1e33),
                myChild: IconWidget(
                  icon: Icons.male,
                  label: "MALE",
                ),
              ),
              CardWidget(
                color:  Color(0xff1d1e33),
                myChild:IconWidget(
                  icon: Icons.female,
                  label: "FEMALE",
                ),
              ),
            ],
          ),),
          
          CardWidget(
                color: Color(0xff1d1e33),
                myChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                
                  children: [
                    Container(
                      child: Text("height".toUpperCase()),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                      Container(
                        
                        padding: const EdgeInsets.only(left: 150),
                        child: const Text("160", style: TextStyle(
                          fontSize: 56,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                      Container(
                        child: const Text("cm"),
                      )
                    ],)
                    
                  ],
                ),
              ),
          Expanded(
            child: Row(
              children: [
              CardWidget(
                  color: Color(0xff1d1e33),
                  myChild: Column(
                  children: [],
                ),
                ),
              CardWidget(
                  color: Color(0xff1d1e33),
                  myChild: Column(
                  children: [],
                ),
                ),
            ],),
          )
        ],
      )),
    );
  }
}



