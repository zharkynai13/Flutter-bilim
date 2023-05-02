
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
            const SizedBox(width: 20),
            Container(
                width: 60,
                height: 60,
                child: ElevatedButton(  
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
                    backgroundColor: Color(0xff5C5B5B)
                  ),
                  onPressed: () => incrementAge(),
                  child: const Icon(Icons.add,),
                ),
             ),
                // ElevatedButton(
                //   onPressed: () => incrementAge(),
                //   child: Icon(Icons.add),
                // ),
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
                // ElevatedButton(
                //   onPressed: () => decrementAge(),
                //   child: Icon(Icons.remove),
                // ),
              ],
            ),

                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     RauntedBTN(icon: Icons.add_outlined,
                    //     value: _age,
                    //      add: (m){
                    //     setState(() {
                    //       if(_age>10) {
                    //         _age ++;
                    //       }
                    //     });
                    //      },
                    //       color: const Color(0xff0A0E21), remove: (int ) {},
                    //       ),

                    //       RauntedBTN(icon: Icons.remove_outlined,
                    //       value: _age,
                    //      remove: (m){ 
                    //       setState(() {
                    //         _age = m;
                    //       });
                    //      },
                    //       color: const Color(0xff0A0E21), add: (int) {},
                    //       ),
                    //   ],
                    // ),
                    
                  ],
                ),
                ),
            ],),
          ),
          ElevatedButton(onPressed: (){}, child:  Text("Calculate"),
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





