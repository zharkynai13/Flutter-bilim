import 'package:flutter/material.dart';
import 'package:hw_11/components/app_colors.dart';
import 'package:hw_11/components/app_text_style.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            width: 110,
            decoration: BoxDecoration(boxShadow: const [
              BoxShadow(color: Colors.grey, blurRadius: 7, offset: Offset(0, 3))
            ], color: Colors.white, borderRadius: BorderRadius.circular(50)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  "0",
                  style: AppTextStyle.numStyle,
                ),
                Text(
                  "32",
                  style: AppTextStyle.numStyle,
                ),
                Text(
                  "0",
                  style: AppTextStyle.numStyle,
                )
              ],
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15, right: 30),
            child: Text(
              "3",
              style: AppTextStyle.numStyle,
            ),
          ),
          Row(
            children: const [
              Icon(
                Icons.favorite,
                color: AppColors.red,
              ),
              Icon(
                Icons.favorite,
                color: AppColors.red,
              ),
              Icon(
                Icons.favorite,
                color: AppColors.red,
              )
            ],
          ),
          const SizedBox(
            width: 30,
          ),
          const Icon(Icons.more_vert)
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: Slider(
            value: 180,
            onChanged: (v) {},
            min: 0,
            max: 200,
          ))
        ],
      ),
    );
  }
}
