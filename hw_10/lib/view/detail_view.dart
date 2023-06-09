import 'package:flutter/material.dart';
import 'package:hw_10/components/detail.dart';
import 'package:hw_10/models/article.dart';
import 'package:hw_10/theme/color_style.dart';
import 'package:intl/intl.dart';
import 'package:share_plus/share_plus.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key, required this.article});

final Article article;

  @override
  Widget build(BuildContext context) {
    final newsTime = DateFormat('d MMMM y H:m').format(
      DateTime.parse(article.publishedAt!));
    return Scaffold(
      appBar: AppBar(
         flexibleSpace: Container(
          decoration: const  BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColors.appBarGradient, 
              AppColors.appBarClr]
            )
          ),
        ),
        title:  Text(article.title),
        actions: [
          IconButton(
            onPressed: (){
              Share.share(article.url!);
            }, 
            icon: const Icon(Icons.share)
            )],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20,right: 20),
          child: Column(
            children: [
              Text(article.title, 
              style: const TextStyle(
                fontSize: 24, 
                fontWeight: FontWeight.bold),
                ),
                DetailRowCom(newsTime: newsTime),
                   const SizedBox(height: 20,),
                Image.network(article.urlToImage.toString()),
                   const SizedBox(height: 20,),
                Text(article.content!,textAlign: TextAlign.center, 
                   style: const TextStyle(fontSize: 20),),            
                 DetailButton(article: article,),
                ],
          ),
        ),
    );
  }
}



