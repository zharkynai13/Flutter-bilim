
import 'package:bmi_calculator_hw8/components/card_widget.dart';
import 'package:bmi_calculator_hw8/components/raund_btn.dart';
import 'package:flutter/material.dart';

import '../components/icon_widget.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
int _height = 120;
int _weight = 80;
int _age = 45;
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
                        child: Text(_height.toString(), style: const TextStyle(
                          fontSize: 56,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                      Container(
                        child: const Text("cm"),
                      )
                    ],
                    ),
                    Container(
                      child: SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          trackHeight: 2,
                          activeTrackColor: Colors.white,
                          thumbColor: Color(0xffeb1555),
                          overlayColor: Color(0x15eb1555),
                          thumbShape: 
                               const RoundSliderThumbShape(enabledThumbRadius: 15),
                                overlayShape: const RoundSliderOverlayShape(overlayRadius: 30)
                        ),
                        child: Slider(
                          max: 190,
                        min: 120, onChanged: (double newValue) {
                          setState(() {
                            _height = newValue.toInt().round();
                          });
                      
                        }, value:_height.toDouble(),),
                      ),
                    )
                    
                  ],
                ),
              ),
          Expanded(
            child: Row(
              children: [
              CardWidget(
                  color: Color(0xff1d1e33),
                  myChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(child: const Text("WEIGHT"),
                    ),
                    
                    Container(
                      child: Text(_weight.toString(),
                      style: const TextStyle(fontSize: 50,
                      fontWeight: FontWeight.bold),
                      ),
                    ),
                   
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RauntedBTN(icon: Icons.add,
                         onpress: (){
                          // setState(() {
                          //   _weight++;
                          // });;
                         },
                          color: Color(0xff0A0E21)),
                          RauntedBTN(icon: Icons.remove_outlined,
                         onpress: (){
                          // setState(() {
                          //   _weight--;
                          // });
                         },
                          color: Color(0xff0A0E21)),
                      ],
                    ),
                    
                  ],
                ),
                ),
              CardWidget(
                  color: Color(0xff1d1e33),
                myChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(child:  Text("age".toUpperCase()),
                    ),
                    
                    Container(
                      child: Text(_age.toString(),
                      style: const TextStyle(fontSize: 50,
                      fontWeight: FontWeight.bold),
                      ),
                    ),
                   
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RauntedBTN(icon: Icons.add,
                         onpress: (){
                        //  _age++;
                         },
                          color: const Color(0xff0A0E21)),
                          RauntedBTN(icon: Icons.remove_outlined,
                         onpress: (){ 
                        // _age--;
                         },
                          color: const Color(0xff0A0E21)),
                      ],
                    ),
                    
                  ],
                ),
                ),
            ],),
          ),
          ElevatedButton(onPressed: (){}, child: const Text("Calculate"),
          style: ElevatedButton.styleFrom(
            primary: Theme.of(context).accentColor,
            minimumSize: const Size(double.infinity
            , 50)
          ),)
        ],
      )),
    );
  }
}





