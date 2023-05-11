
import 'dart:math';

import 'package:bmi_calculator_hw8/components/calcilator.dart';
import 'package:bmi_calculator_hw8/components/card_widget.dart';
import 'package:flutter/material.dart';

import '../components/icon_widget.dart';
 enum GenderSelection { MALE, FEMALE }
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final inActiveColor = Color(0xff1d1e33);
  final activeColor = Color.fromARGB(1, 40, 42, 73);
   GenderSelection? selection;
int _height = 120;
int _weight = 80;
int _age = 45;
void results () {
   final res = _weight / pow(_height/100, 2);
     if(res < 18.5) {
       _showAlertDialog(context, "You are Strong");
      } else if(res >= 18.6 && res <= 25) {
        _showAlertDialog(context, "You re normal");
      } else if (res >= 25.1 && res <= 30) {
        _showAlertDialog(context, "You are fit");
      } else {
        _showAlertDialog(context, "YOU ARE SO FIT!!");
      }
}
  void incrementAge() {
    setState(() {
      _age++;
    });
  }

  void decrementAge() {
    setState(() {
      if (_age > 1) {
        _age--;
      }
    });
  }

  void incrementWeight() {
    setState(() {
      _weight++;
    });
  }

  void decrementWeight() {
    setState(() {
      if (_weight > 1) {
        _weight--;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI calculator'.toUpperCase()),
      ),
      body: SafeArea(child: 
      Column(
        children: [
          Expanded(child: Row(
            children:  [
               CardWidget(
                color: selection == GenderSelection.MALE ? activeColor : inActiveColor,
                myChild: const IconWidget(
                  icon: Icons.male,
                  label: "MALE", 
                ),
                onPressed: () {
                },
              ),
              CardWidget(
                color:  selection == GenderSelection.FEMALE ? activeColor : inActiveColor,
                myChild: const IconWidget(
                  icon: Icons.female,
                  label: "FEMALE",
                ),
                onPressed: () {
 
                },
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
                const SizedBox(width: 20),
                Container(
                width: 60,
                height: 60,
                child: ElevatedButton(
                   style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
                    backgroundColor: Color(0xff5C5B5B),
                  ),
                  onPressed: () => incrementWeight(),
                  child: const Icon(Icons.add,),
                ),
             ),
                
                const SizedBox(width: 20),
                   Container(
                width: 60,
                height: 60,
                child: ElevatedButton(  
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
                    backgroundColor: Color(0xff5C5B5B),
                  ),
                  onPressed: () => decrementWeight(),
                  child: const Icon(Icons.remove,),
                ),
             ),
 
                // ElevatedButton( 
                //   onPressed: () => decrementWeight(),
                //   child: const Icon(Icons.remove,size: 45,),
                // ),
              ],
            ),
            
          ],
        ),
      ),
              CardWidget(
                  color: const Color(0xff1d1e33),
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
            const SizedBox(width: 20),
            Container(
                width: 60,
                height: 60,
                child: ElevatedButton(  
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
                    backgroundColor: const Color(0xff5C5B5B)
                  ),
                  onPressed: () => incrementAge(),
                  child: const Icon(Icons.add,),
                ),
             ),
                const SizedBox(width: 20),
            Container(
                width: 60,
                height: 60,
                child: ElevatedButton(  
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
                    backgroundColor: Color(0xff5C5B5B)
                  ),
                  onPressed: () => decrementAge(),
                  child: const Icon(Icons.remove,),
                ),
             ),
              ],
            ),
                    
                  ],
                ),
                ),
            ],),
          ),
          calculated_btn(
            onPressed: () {
            results();
            }
          )
        ],
      )),
    );
  }
}

Future<void> _showAlertDialog(BuildContext context, String text) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        titleTextStyle: const TextStyle(color: Colors.blueAccent, fontSize: 24),
        backgroundColor: Color(0xff0a0321),
        title: const Text('Cancel Calculate', textAlign: TextAlign.center,),
        content: Text(text,textAlign: TextAlign.center,
        style:
        const TextStyle(
          fontSize: 22
        ),),
        actions: <Widget>[
          TextButton(
            child:  Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}




