import 'package:flutter/material.dart';

class RauntedBTN extends StatelessWidget {
  final IconData icon;
  final Function() onpress;
  final Color color;
  const RauntedBTN({super.key, 
  required this.icon,
  required this.onpress,
  required this.color});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child:Icon(icon,size: 25,),
      onPressed: onpress(),
      elevation: 0,
      constraints: BoxConstraints.tightFor(height: 56,width: 56),
      shape: CircleBorder(),
      fillColor: color,
      );
  }
}