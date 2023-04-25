import 'package:flutter/material.dart';
import 'package:hw_8_bmi_calculator/theme/app_texts.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child :Card (
        color: const Color.fromARGB(255, 25, 56, 26),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: const [
               Icon(Icons.male),
               AppTexts.male
            ],
          ))
          );
  }
}