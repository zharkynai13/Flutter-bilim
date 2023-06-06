import 'package:flutter/material.dart';
import 'package:hw_10/models/article.dart';
import 'package:hw_10/theme/text_style.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailRowCom extends StatelessWidget {
  const DetailRowCom({
    super.key,
    required this.newsTime,
  });

  final String newsTime;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.access_time),
        const SizedBox(width: 20,),
        Text(newsTime)
      ],
    );
  }
}

class DetailButton extends StatelessWidget {
  final Article article;
   DetailButton({
    super.key, required this.article,
  });
 
  @override
  Widget build(BuildContext context) {
     final Uri url = Uri.parse(article.url);
    return MaterialButton(onPressed: (){
      Future<void> _launchUrl() async {
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
   }
 } 

  },
      child: const Text("Learn More", style: AppTextStyle.learnBtn,),);
  }
}