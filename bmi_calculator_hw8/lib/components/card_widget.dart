import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final Color color;
  final Widget myChild;
  final  Function? onPressed;
  const CardWidget({
   required this.color,
   required this.myChild,  this.onPressed, 
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Padding(
      padding: const EdgeInsets.all(5),
      child: GestureDetector(
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10)
          ),
          child: myChild,
        ),
      ),
    ));
  }
}