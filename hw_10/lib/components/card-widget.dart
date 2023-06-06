import 'package:flutter/material.dart';
import 'package:hw_10/constants/api_const.dart';
import 'package:hw_10/models/article.dart';
import 'package:hw_10/theme/color_style.dart';

class mainCard extends StatelessWidget {
  const mainCard({
    super.key,
    required this.news,
  });

  final Article news;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.cardClr,
      child: Row(
        children: [
        Expanded(
          flex: 3,
          child: 
          Image.network(news.urlToImage ?? ApiConst.newsImg)
          ),
          const SizedBox(width: 20,),
        Expanded(
          flex: 5,
          child: Text(news.title, style: const TextStyle(fontSize: 16),))
      ],),
    );
  }
}