import 'package:flutter/material.dart';
import 'package:hw_11/components/app_colors.dart';
import 'package:hw_11/components/app_text_style.dart';
import 'package:hw_11/model/suuro_joop.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key, required this.surooJoopList});
  final List<Suroo> surooJoopList;

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int indexText = 0;
  int tuuraJop = 0;
  int kataJoop = 0;
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
            child: Text("Paris"),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Image.asset(
              'assets/capitals/paris.jpeg',
            ),
          ),
          Expanded(
            child: GridView.builder(
                padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 1.6),
                itemCount: 4,
                itemBuilder: ((context, index) {
                  return Card(
                    color: Colors.amber,
                    child: InkWell(
                      onTap: () {
                        if (indexText + 1 == widget.surooJoopList.length) {
                          showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                    title:
                                        const Text("Your text are so simple"),
                                    content:
                                        Text("tuura:$tuuraJop\nKata:$kataJoop"),
                                    actions: <Widget>[
                                      TextButton(
                                          onPressed: () {
                                            indexText = 0;
                                            kataJoop = 0;
                                            tuuraJop = 0;
                                            setState(() {});
                                            Navigator.pop(context);
                                          },
                                          child: const Text("Cancel"))
                                    ],
                                  ));
                        } else {
                          if (surooJoopList[indexText]
                                  .jooptor[index]
                                  .tuuraJoop ==
                              true) {
                            tuuraJop++;
                          }
                          kataJoop++;
                        }
                        setState(() {
                          indexText++;
                        });
                      },
                      child: Center(
                          child: Text(
                              surooJoopList[indexText].jooptor[index].text)),
                    ),
                  );
                })),
          )
        ],
      ),
    );
  }
}
