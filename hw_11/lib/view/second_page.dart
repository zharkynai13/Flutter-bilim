import 'package:flutter/material.dart';
import 'package:hw_11/components/app_colors.dart';
import 'package:hw_11/components/app_text.dart';

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
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(50)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Text("0"), Text("32"), Text("0")],
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, right: 30),
            child: Text("3"),
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
    );
  }
}
