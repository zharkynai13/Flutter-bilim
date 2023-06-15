import 'package:flutter/material.dart';
import 'package:hw_11/components/app_colors.dart';
import 'package:hw_11/components/app_text.dart';
import 'package:hw_11/components/app_text_style.dart';
import 'package:hw_11/view/second_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> continents = [
    "Asia",
    "Europa",
    "North America",
    "South America",
    "Africa",
    "Australia"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppTexts.appBarTitle,
        titleTextStyle: AppTextStyle.appBarTitle,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: AppColors.blue,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: AppColors.black,
              ))
        ],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
        child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SecondPage()));
          },
          child: Container(
            child: Column(
              children: [
                Expanded(
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200,
                              childAspectRatio: 3 / 3.5,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20),
                      itemCount: continents.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              Text(continents[index],
                                  style: AppTextStyle.cardTitle),
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
