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
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
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
          const Row(
            children: [
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
          // Slider(
          //   activeColor: Colors.black,
          //   value: 200,
          //   onChanged: (v) {},
          //   min: 0,
          //   max: 200,
          // ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              "Paris",
              style: AppTextStyle.paris,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Image.asset(
              'assets/capitals/paris.jpeg',
            ),
          )
        ],
      ),
    );
  }
}
