import 'package:flutter/material.dart';

class calculated_btn extends StatelessWidget {
  const calculated_btn({
    super.key, required this.onPressed,
  });
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed,
     child:  Text("Calculate",style: TextStyle(color: Colors.white),),
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.pink,
    minimumSize: const Size(double.infinity
      , 50),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero)),
    ),);
  }
}