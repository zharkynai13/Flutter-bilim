import 'package:flutter/material.dart';
import 'package:hw_8_bmi_calculator/theme/app_texts.dart';

class CardWidget extends StatelessWidget {
  final Color color;
  // final Icon icon;
  // final Text text;
  const CardWidget({
    required this.color,
    // required this.icon,
    // required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child :Card (
        color:color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: const[
              // Icon(Iconsicon)
               Icon(Icons.male),
               AppTexts.male
            ],
          ))
          );
  }
}